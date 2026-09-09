cask "llmd" do
  version "0.1.1"
  sha256 "443acd1b53356ca1af2e649106e147ea07677b8072c3ce36e695abf69f72ca06"

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
