cask "toolmatex" do
  version :latest
  sha256 :no_check

  on_arm   { url "https://releases.toolmatex.com/releases/ToolmateX_App_0.1.0_aarch64.dmg" }
  on_intel { url "https://releases.toolmatex.com/releases/ToolmateX_App_0.1.0_x64.dmg" }

  name "ToolMateX"
  desc "Developer, design, and productivity tools"
  homepage "https://toolmatex.com"

  app "ToolMateX.app"
end
