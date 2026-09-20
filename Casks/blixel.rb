cask "blixel" do
  version "0.7.0"
  sha256 "c39d7baddf0f8d0e04305488b9a89e27a41bce7f96886ee904527111c898f95e"

  url "https://github.com/blixel-app/blixel-releases/releases/download/v#{version}/Blixel-#{version}.dmg"
  name "Blixel"
  desc "Multi-window screen sharing for pairing and ensemble sessions"
  homepage "https://github.com/blixel-app/blixel-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Blixel.app"
  binary "#{appdir}/Blixel.app/Contents/Resources/bin/blixel"

  uninstall quit: "app.blixel.Blixel"

  zap trash: [
    "~/.config/blixel",
    "~/Library/Logs/Blixel",
    "~/Library/Preferences/app.blixel.Blixel.plist",
  ]
end
