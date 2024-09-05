cask "winbox" do
  version "4.0beta4"
  sha256 "0d15b0b6c25a4b11420d3dc00fc6a754d5ecada26d175501e0c8849ced409d5a"
  url "https://download.mikrotik.com/routeros/winbox/#{version}/WinBox.dmg"
  name "WinBox"
  desc "Administration utilty of MikroTik RouterOS"
  homepage "https://mikrotik.com/"

  auto_updates

  app "WinBox.app"
end
