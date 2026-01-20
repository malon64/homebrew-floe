# homebrew-floe

Homebrew tap for installing the `floe` CLI via prebuilt release binaries.

## Install

```bash
brew tap malon64/floe
brew install floe
```

Homebrew will download the correct release asset for your platform.

## Release source

Build the `floe` binary from the `floe-cli` crate in https://github.com/malon64/floe
(crates.io: https://crates.io/crates/floe-cli), then upload the tarballs below
to that repo's GitHub Releases.

## Release asset naming convention

The `floe` GitHub Releases must publish the following tarballs:

- `floe-vX.Y.Z-x86_64-apple-darwin.tar.gz`
- `floe-vX.Y.Z-aarch64-apple-darwin.tar.gz`
- `floe-vX.Y.Z-x86_64-unknown-linux-gnu.tar.gz`

Each tarball should contain a single binary named `floe` at the archive root.

## Maintainer: update for a new release

1. Update `Formula/floe.rb`:
   - bump `version`
   - update each `sha256`
   - update `GITHUB_REPO` if the release repo changes
2. Verify the URLs follow the naming convention above.
3. (Optional) Run `brew audit --strict Formula/floe.rb` locally.

You can also use the helper script:

```bash
scripts/update_formula.sh \
  <version> \
  <sha_macos_intel> \
  <sha_macos_arm> \
  <sha_linux_x86_64> \
  [github_repo]
```

Example:

```bash
scripts/update_formula.sh \
  0.2.0 \
  0123456789abcdef... \
  abcdef0123456789... \
  fedcba9876543210... \
  YOUR_GITHUB_ORG/floe
```
