cask "blixel" do
  version "0.12.1"
  sha256 "f9a9c1c574f21fdc5379d699a343de74bdec7a206725da4111189f12456aabf4"

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
