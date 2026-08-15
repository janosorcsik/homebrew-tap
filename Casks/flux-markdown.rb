cask "flux-markdown" do
  version "1.34.475"
  sha256 "1deaaf9fa37b54f6cd5da3cd868c43fb6d9a85f99644d846d746f19104946f01"

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
