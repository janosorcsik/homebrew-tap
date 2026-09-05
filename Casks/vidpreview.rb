cask "vidpreview" do
  version "5.1B"
  sha256 "2b3b7d9d5b1c675ae581c0c13b11b6aefbaad550243ab778a1dc1d6721593be8"

  url "https://github.com/ptaru/VidPreview/releases/download/#{version}/VidPreview.zip"
  name "VidPreview"
  desc "QuickLook extension for native video preview"
  homepage "https://github.com/ptaru/VidPreview"

  depends_on macos: :sequoia

  app "VidPreview.app"

  postflight_steps do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/VidPreview.app"]
  end

  zap trash: [
    "~/Library/Application Scripts/uk.tarun.VidPreview*",
    "~/Library/Containers/uk.tarun.VidPreview*",
  ]
end
