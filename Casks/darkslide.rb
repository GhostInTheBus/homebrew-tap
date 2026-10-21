cask "darkslide" do
  version "1.2"
  sha256 "16daf41e43e66397774492f2c340aa519c1896edfd3aac590244849744b0bacf"

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
