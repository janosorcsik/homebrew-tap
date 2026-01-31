cask "autopip" do
  version "1.0.1"
  sha256 "fad064d9837828c819b4b25ef3181a1ad1757a371dd132fa9521f27798899681"

  url "https://github.com/vordenken/AutoPiP/releases/download/v#{version}/AutoPiP.dmg"
  name "AutoPiP"
  desc "Picture-in-Picture mode when switching tab in Safari"
  homepage "https://github.com/vordenken/AutoPiP/"

  depends_on macos: ">= :ventura"

  app "AutoPiP.app"

  zap trash: [
    "~/Library/Application Scripts/com.vd.AutoPiP",
    "~/Library/Application Scripts/com.vd.AutoPiP.Extension",
    "~/Library/Containers/com.vd.AutoPiP",
    "~/Library/Containers/com.vd.AutoPiP.Extension",
  ]
end
