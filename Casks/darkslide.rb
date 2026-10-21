cask "darkslide" do
  version "1.0"
  sha256 "23590bd56b0e3774ffa608432f31d36ba16878c90bf35a7a81e455a332653f54"

  url "https://github.com/GhostInTheBus/darkslide/releases/download/v#{version}/Darkslide-#{version}.zip"
  name "Darkslide"
  desc "Photo ingest, culling and captioning, native on Apple Silicon"
  homepage "https://github.com/GhostInTheBus/darkslide"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Darkslide.app"

  zap trash: [
    "~/Library/Application Support/Darkslide",
    "~/Library/Preferences/com.ghostinthebus.darkslide.plist",
  ]

  caveats <<~EOS
    Darkslide is not notarized. On first launch, right-click the app and choose Open.
  EOS
end
