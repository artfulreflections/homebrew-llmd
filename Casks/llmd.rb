cask "llmd" do
  version "0.1.2"
  sha256 "33e7ac8a54f2dd45bb68e454910c1673b020774d61b86214f057db071ef3277b"

  url "https://github.com/artfulreflections/homebrew-llmd/releases/download/v#{version}/llmd-#{version}.zip"
  name "llmd"
  desc "Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/artfulreflections/llmd"

  depends_on macos: :sonoma

  app "llmd.app"
  binary "#{appdir}/llmd.app/Contents/MacOS/llmd"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/llmd.app"]
  end

  zap trash: "~/Library/Preferences/com.llmd.app.plist"
end
