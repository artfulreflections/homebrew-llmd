cask "llmd" do
  version "0.1.0"
  sha256 "159f68e3de73e753073262b00c76ed175af0097c5ac73659fd4e75680f76f65b"

  url "https://github.com/artfulreflections/llmd/releases/download/v#{version}/llmd-#{version}.zip"
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
