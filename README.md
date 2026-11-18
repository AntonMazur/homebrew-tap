# Anton Mazur's Homebrew tap

Install [SmoothWheel](https://github.com/AntonMazur/SmoothWheel), a free, MIT-licensed macOS menu-bar utility for smooth third-party mouse-wheel scrolling.

## Install

With [Homebrew](https://brew.sh) already installed:

```sh
brew install --cask antonmazur/tap/smoothwheel
```

The current release requires **Apple Silicon and macOS 13 or later**. Homebrew itself has its own [supported macOS versions](https://docs.brew.sh/Installation#macos-requirements).

Open **SmoothWheel** from Applications, grant **Accessibility** permission, and turn on **Enable smoothing**. Smoothing starts disabled on every launch.

The current build is **ad-hoc signed and not notarized**. macOS may require explicit approval before first launch. Read the [installation guide](https://github.com/AntonMazur/SmoothWheel/blob/main/docs/INSTALL.md) for first launch, existing manual installations, and troubleshooting.

This is a developer-maintained tap. It is not an official Homebrew Cask listing.

## Update

Quit SmoothWheel from its menu-bar menu, then:

```sh
brew update
brew upgrade --cask antonmazur/tap/smoothwheel
```

Open the app again and enable smoothing. If Accessibility access stops working after an update, remove the old SmoothWheel entry in System Settings and add the installed app again.

## Uninstall

Quit SmoothWheel, then:

```sh
brew uninstall --cask smoothwheel
```

Uninstalling leaves local preferences intact. Remove its Accessibility entry in System Settings if you no longer use the app.

## Maintaining the cask

For each release, update `version` and `sha256` in `Casks/smoothwheel.rb` to match the published GitHub release ZIP. Always use a versioned URL and the checksum of the actual uploaded asset. Do not replace the ZIP at an existing version or disable quarantine in the cask.

Validate changes with `brew style Casks/smoothwheel.rb`, `brew info --cask antonmazur/tap/smoothwheel`, and `brew fetch --cask antonmazur/tap/smoothwheel`. Test a new install and an upgrade before claiming compatibility. Report app problems in [SmoothWheel's issues](https://github.com/AntonMazur/SmoothWheel/issues).
