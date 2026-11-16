cask "blixel" do
  version "0.18.4"
  sha256 "5a43e87fb8c2811c6ef955719e7b1b83b83b0c9521032681f749066dddb02082"

  url "https://github.com/blixel-app/blixel-releases/releases/download/v#{version}/Blixel-#{version}.dmg"
  name "Blixel"
  desc "Video chat with multi-window screen sharing and coding-agent handoffs"
  homepage "https://blixel.app"

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
