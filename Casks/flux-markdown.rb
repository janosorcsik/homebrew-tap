cask "flux-markdown" do
  version "1.34.464"
  sha256 "605c9022135af4e156e33d8842ac9e68f5077202b5f0e0540908215d3cd01fa1"

  url "https://github.com/xykong/flux-markdown/releases/download/v#{version}/FluxMarkdown.dmg"
  name "FluxMarkdown"
  desc "Markdown previews in Finder QuickLook with diagrams and math"
  homepage "https://github.com/xykong/flux-markdown"

  depends_on macos: :big_sur

  app "FluxMarkdown.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/FluxMarkdown.app"]
  end

  zap trash: [
    "~/Library/Application Scripts/com.xykong.Markdown.QuickLook",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.xykong.markdown.sfl4",
    "~/Library/Application Support/FluxMarkdown",
    "~/Library/Caches/com.xykong.Markdown",
    "~/Library/Containers/com.xykong.Markdown.QuickLook",
    "~/Library/HTTPStorages/com.xykong.Markdown",
    "~/Library/Preferences/com.xykong.Markdown.plist",
    "~/Library/WebKit/com.xykong.Markdown",
  ]
end
