cask "darkslide" do
  version "1.5.5"
  sha256 "754e6bf32b0536ac202b7f9580f0531cd1ae08e6672ffe53b4feef47243ddb07"

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
