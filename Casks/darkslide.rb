cask "darkslide" do
  version "1.3"
  sha256 "63a4e34cb4b248c6dca91563d431cc6c4823dd1fc861bb37689f6b5dbfb4466d"

  url "https://github.com/GhostInTheBus/darkslide/releases/download/v#{version}/Darkslide-#{version}.zip"
  name "Darkslide"
  desc "Photo ingest, culling and captioning, native on Apple Silicon"
  homepage "https://github.com/GhostInTheBus/darkslide"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Darkslide.app"

  zap trash: [
    "~/Library/Application Support/Darkslide",
    "~/Library/Preferences/com.ghostinthebus.darkslide.plist",
  ]

  caveats <<~EOS
    Darkslide is not notarized. On first launch, right-click the app and choose Open.
  EOS
end
