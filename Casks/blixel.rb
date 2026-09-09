cask "blixel" do
  version "0.6.2"
  sha256 "d71c1e4749289b6b614f4ddb232834850e3d4ae9f9034600bb0008f85a92ae2e"

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
