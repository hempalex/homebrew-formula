cask "winbox" do
  version "4.0beta3"
  sha256 "1c798996b466a3e89310d9065beb7f5d450cfedc4cfee925ff8f8a11cf01431c"
  url "https://download.mikrotik.com/routeros/winbox/#{version}/WinBox.dmg"
  name "WinBox"
  desc "Administration utilty of MikroTik RouterOS"
  homepage "https://mikrotik.com/"

  auto_updates

  app "WinBox.app"
end
