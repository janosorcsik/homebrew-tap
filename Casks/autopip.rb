cask "autopip" do
  version "2.1.0"
  sha256 "1f7a0f647c577b44e51d0ac5e450804369ada9d522d75fe4371855d5e768f01a"

  url "https://github.com/vordenken/AutoPiP/releases/download/v#{version}/AutoPiP.dmg"
  name "AutoPiP"
  desc "Picture-in-Picture mode when switching tab in Safari"
  homepage "https://github.com/vordenken/AutoPiP/"

  depends_on macos: :ventura

  app "AutoPiP.app"

  postflight_steps do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/AutoPiP.app"]
  end

  zap trash: [
    "~/Library/Application Scripts/com.vd.AutoPiP*",
    "~/Library/Containers/com.vd.AutoPiP*",
    "~/Library/Preferences/com.vd.AutoPiP.plist",
  ]
end
