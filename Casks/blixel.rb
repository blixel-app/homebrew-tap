cask "blixel" do
  version "0.13.1"
  sha256 "481ed41166b58f8b8c21d8bc4e726de0998af21d4c8230ebc8273898d26b3e01"

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
    "~/.blixel",
    "~/.config/blixel",
    "~/Library/Logs/Blixel",
    "~/Library/Preferences/app.blixel.Blixel.plist",
  ]
end
