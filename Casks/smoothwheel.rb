cask "smoothwheel" do
  version "0.3.17"
  sha256 "947446e9473c8ac576b632ba682da138d0b6172c9a0015d35fd1cc82715a5ca2"

  url "https://github.com/AntonMazur/SmoothWheel/releases/download/v#{version}/SmoothWheel.zip"
  name "SmoothWheel"
  desc "Smooth scrolling for third-party mouse wheels"
  homepage "https://smoothwheel.vercel.app/"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "SmoothWheel.app"

  caveats <<~EOS
    SmoothWheel requires Accessibility access in System Settings.
    Open the app and turn on Enable smoothing after each launch.

    This release is ad-hoc signed and not notarized. macOS may require
    explicit approval in System Settings > Privacy & Security before opening.
    Setup help: https://github.com/AntonMazur/SmoothWheel/blob/main/docs/INSTALL.md
  EOS
end
