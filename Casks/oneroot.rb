cask "oneroot" do
  version "2.3.1"
  sha256 "f8580bcea3f2bb9d8d527ff7f4aebecde016bfbae8acdda0c2cbdb6057a03747"

  url "https://github.com/hillcraft-sc/OneRoot/releases/download/v#{version}/OneRoot-#{version}.dmg"
  name "OneRoot"
  desc "Fast, native file manager with tabs, a folder tree and dual pane"
  homepage "https://oneroot.hillcraft-sc.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "OneRoot.app"

  zap trash: [
    "~/Library/Caches/com.oneroot.OneRoot",
    "~/Library/HTTPStorages/com.oneroot.OneRoot",
    "~/Library/Preferences/com.oneroot.OneRoot.plist",
    "~/Library/Saved Application State/com.oneroot.OneRoot.savedState",
  ]
end
