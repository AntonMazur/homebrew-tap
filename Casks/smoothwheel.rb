cask "smoothwheel" do
  version "0.3.11"
  sha256 "d4ba9b5221e11c6fc0dd8f0fa217592f731df21370d5e205d4ed57a0f0f295c0"

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
