cask "flux-markdown" do
  version "1.40.622"
  sha256 "6afd22b8013274ce5849c03921c3311dc0b7d02265940209a48d6460d0f75f8d"

  url "https://github.com/xykong/flux-markdown/releases/download/v#{version}/FluxMarkdown.dmg"
  name "FluxMarkdown"
  desc "Markdown previews in Finder QuickLook with diagrams and math"
  homepage "https://github.com/xykong/flux-markdown"

  depends_on macos: :big_sur

  app "FluxMarkdown.app"

  zap trash: [
    "~/Library/Application Scripts/com.xykong.Markdown.QuickLook",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.xykong.markdown.sfl*",
    "~/Library/Application Support/FluxMarkdown",
    "~/Library/Caches/com.xykong.Markdown",
    "~/Library/Containers/com.xykong.Markdown.QuickLook",
    "~/Library/HTTPStorages/com.xykong.Markdown",
    "~/Library/Preferences/com.xykong.Markdown.plist",
    "~/Library/WebKit/com.xykong.Markdown",
  ]
end
