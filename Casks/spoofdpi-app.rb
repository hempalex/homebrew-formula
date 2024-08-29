cask "spoofdpi-app" do
  version "1.2.1"
  sha256 "11d6b93420093ed7476ff2d93502da8eab4b852e741a0e0ecda013fb537122cc"
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
