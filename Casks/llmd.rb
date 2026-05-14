cask "llmd" do
  version "0.1.0"
  sha256 "948bd9f51a79f71678cbfb5d221afc2088b991609a067daf8ce108ad9973ca39"

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
