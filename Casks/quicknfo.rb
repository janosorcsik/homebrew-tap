cask "quicknfo" do
  version "2.0.0"
  sha256 "ee43be6501fd2dd1bb78cd7ac0d8ad9f5c0e09f67de2aca3d112a5301ee9ad87"

  url "https://github.com/vigo/QuickNFO/releases/download/v#{version}/QuickNFO-v#{version}.zip"
  name "QuickNFO"
  desc "QuickLook preview extension for NFO files"
  homepage "https://github.com/vigo/QuickNFO"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "QuickNFO.app"

  zap trash: [
    "~/Library/Application Scripts/org.planbnet.quicknfo*",
    "~/Library/Containers/org.planbnet.quicknfo*",
  ]
end
