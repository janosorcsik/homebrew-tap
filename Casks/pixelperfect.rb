cask "pixelperfect" do
  version "1.5"
  sha256 "94c2fbb35850b3703e1677959421c761b4ad9860a8d17f383c07900fbd89c99a"

  url "https://github.com/cormiertyshawn895/PixelPerfect/releases/download/#{version}/PixelPerfect.#{version}.zip"
  name "PixelPerfect"
  desc "Increase the text size of iPhone and iPad apps"
  homepage "https://github.com/cormiertyshawn895/PixelPerfect/"

  app "Pixel Perfect.app"

  zap trash: [
    "~/Library/Caches/com.mac.PixelPerfect",
    "~/Library/HTTPStorages/com.mac.PixelPerfect",
    "~/Library/Preferences/com.mac.PixelPerfect.plist",
  ]
end
