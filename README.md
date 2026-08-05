# Homebrew tap for Blixel

[Blixel](https://github.com/blixel-app/blixel-releases) is a native macOS app for
multi-window screen sharing, built on LiveKit.

```bash
brew install --cask blixel-app/tap/blixel
```

That adds this tap and installs in one step. Tapping first is equivalent:

```bash
brew tap blixel-app/tap
brew install --cask blixel
```

Either way you get `Blixel.app` and the `blixel` command on your PATH. Requires
Apple silicon and macOS 15 (Sequoia) or later.

To update:

```bash
brew upgrade --cask blixel
```

To remove:

```bash
brew uninstall --cask blixel          # app and CLI
brew uninstall --zap --cask blixel    # also settings and logs
```

Artifacts are published to
[blixel-app/blixel-releases](https://github.com/blixel-app/blixel-releases),
signed with an Apple Developer ID and notarized. `Casks/blixel.rb` is generated
by the release script — edit the source repo, not this file.
