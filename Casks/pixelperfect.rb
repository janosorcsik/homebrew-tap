cask "pixelperfect" do
  version "1.4"
  sha256 "31b98c0d3afc71df6e4ea99be82c89d3d910ca7dbb2c6d553254e4ac86f25ece"

  url "https://github.com/cormiertyshawn895/PixelPerfect/releases/download/#{version}/PixelPerfect.#{version}.zip"
  name "PixelPerfect"
  desc "Increase the text size of iPhone and iPad apps on Mac."
  homepage "https://github.com/cormiertyshawn895/PixelPerfect/"

  container nested: "PixelPerfect/PixelPerfect.app"

  app "PixelPerfect.app"

  zap trash: [
    "~/Library/Caches/com.mac.PixelPerfect",
    "~/Library/HTTPStorages/com.mac.PixelPerfect",
    "~/Library/Preferences/com.mac.PixelPerfect.plist",
  ]
end