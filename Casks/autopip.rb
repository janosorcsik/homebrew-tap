cask "autopip" do
  version "2.0.0"
  sha256 "8e095a94c466f02fa6b43833548d5aa73848793272132150ecb9d745613bc755"

  url "https://github.com/vordenken/AutoPiP/releases/download/v#{version}/AutoPiP.dmg"
  name "AutoPiP"
  desc "Picture-in-Picture mode when switching tab in Safari"
  homepage "https://github.com/vordenken/AutoPiP/"

  depends_on macos: :ventura

  app "AutoPiP.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/AutoPiP.app"]
  end

  zap trash: [
    "~/Library/Application Scripts/com.vd.AutoPiP*",
    "~/Library/Containers/com.vd.AutoPiP*",
    "~/Library/Preferences/com.vd.AutoPiP.plist",
  ]
end
