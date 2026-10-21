cask "darkslide" do
  version "1.4"
  sha256 "96d3479dd5f48f50ed712911af91d55a5b6c7299c311b6bd5f5b933acc2f243c"

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
