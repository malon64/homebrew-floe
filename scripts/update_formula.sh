#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'USAGE'
Usage: scripts/update_formula.sh <version> <sha_macos_intel> <sha_macos_arm> <sha_linux_x86_64> [github_repo]
USAGE
}

if [[ $# -lt 4 ]]; then
  usage
  exit 1
fi

version="$1"
sha_macos_intel="$2"
sha_macos_arm="$3"
sha_linux_x86_64="$4"
github_repo="${5-}"

python3 - "$version" "$sha_macos_intel" "$sha_macos_arm" "$sha_linux_x86_64" "$github_repo" <<'PY'
import re
import sys
from pathlib import Path

version, sha_macos_intel, sha_macos_arm, sha_linux_x86_64, github_repo = sys.argv[1:]
path = Path("Formula/floe.rb")
text = path.read_text()
lines = text.splitlines()

version_re = re.compile(r'^(\s*)version\s+"[^"]+"\s*$')
repo_re = re.compile(r'^(\s*)GITHUB_REPO\s*=\s*"[^"]+"\s*$')
sha_re = re.compile(r'^(\s*)sha256\s+"[^"]+"\s*$')

for i, line in enumerate(lines):
    m = version_re.match(line)
    if m:
        lines[i] = f'{m.group(1)}version "{version}"'
    if github_repo:
        m = repo_re.match(line)
        if m:
            lines[i] = f'{m.group(1)}GITHUB_REPO = "{github_repo}"'

sha_map = {
    "x86_64-apple-darwin": sha_macos_intel,
    "aarch64-apple-darwin": sha_macos_arm,
    "x86_64-unknown-linux-gnu": sha_linux_x86_64,
}

updated = {k: False for k in sha_map}

for i, line in enumerate(lines):
    if "url" not in line:
        continue
    for target, sha in sha_map.items():
        if target in line:
            for j in range(i + 1, min(i + 5, len(lines))):
                if sha_re.match(lines[j]):
                    indent = sha_re.match(lines[j]).group(1)
                    lines[j] = f'{indent}sha256 "{sha}"'
                    updated[target] = True
                    break

path.write_text("\n".join(lines) + "\n")

missing = [k for k, v in updated.items() if not v]
if missing:
    print(f"Warning: did not update sha256 for: {', '.join(missing)}", file=sys.stderr)
PY

echo "Updated Formula/floe.rb. Consider running: brew audit --strict Formula/floe.rb"
