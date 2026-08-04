cask "blixel" do
  version "0.1.0"
  sha256 "a6f7359f39487d53100c0474e6e002d55f5ab620f0f300be10655f008549806d"

  url "https://github.com/blixel-app/blixel-releases/releases/download/v#{version}/Blixel-#{version}.zip"
  name "Blixel"
  desc "Multi-window screen sharing for pairing and ensemble sessions"
  homepage "https://github.com/blixel-app/blixel-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"
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
