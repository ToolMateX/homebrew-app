cask "toolmatex" do
  version :latest
  sha256 :no_check

  on_arm do
    url "https://releases.toolmatex.com/releases/ToolmateX App_0.1.0_aarch64.dmg",
        verified: "releases.toolmatex.com/"
  end

  on_intel do
    url "https://releases.toolmatex.com/releases/ToolmateX App_0.1.0_x64.dmg",
        verified: "releases.toolmatex.com/"
  end

  name "ToolMateX"
  desc "Developer, design, and productivity tools (desktop app)"
  homepage "https://toolmatex.com"

  app "ToolMateX.app"

  caveats <<~EOS
    This build is not code signed or notarized.
    Install with:
      brew install --cask --no-quarantine toolmatex
    If you ever see a Gatekeeper warning, open once via Finder (right-click → Open) or:
      xattr -dr com.apple.quarantine /Applications/ToolMateX.app
  EOS

  zap trash: [
    "~/Library/Application Support/ToolMateX",
    "~/Library/Preferences/com.toolmatex.app.plist",
    "~/Library/Saved Application State/com.toolmatex.app.savedState",
    "~/Library/Logs/ToolMateX",
  ]
end