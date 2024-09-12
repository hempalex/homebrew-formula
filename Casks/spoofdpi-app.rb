cask "spoofdpi-app" do
  version "1.3"
  sha256 "c112ccee346a7876986cd5d2d08107691e81d44216acba7a0b78d8e82e79ddba"
  url "https://github.com/SpoofDPIApp/SpoofDPI-App/releases/download/#{version}/SpoofDPI.App.zip"
  name "SpoofDPI-App"
  desc "spoofdpi frontend for macos"
  homepage "https://github.com/SpoofDPIApp/SpoofDPI-App"

  livecheck do
    url :url
    strategy :github_releases
  end

  app "SpoofDPI App.app"
end
