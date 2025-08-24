# Askimo Homebrew Tap

Homebrew tap for installing **Askimo** (GraalVM native CLI).

## Install

```bash
brew tap haiphucnguyen/askimo
brew install askimo
# or explicitly:
# brew install haiphucnguyen/askimo/askimo
```
## Upgrade
```bash
brew uninstall askimo
brew untap haiphucnguyen/askimo
```

## What’s in this tap?

Formula/askimo.rb — auto-updated on each tagged release of
haiphucnguyen/askimo

by GitHub Actions.

macOS arm64 is supported; Intel support is added when artifacts are published.

## Troubleshooting

If macOS Gatekeeper blocks the binary:

Right-click the app in Finder → Open, or

xattr -d com.apple.quarantine "$(brew --prefix)/bin/askimo"

## License

Apache-2.0 (see main project).
