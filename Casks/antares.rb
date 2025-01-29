cask "antares" do
  version "0.7.30"
  sha256 "72b0dc02143f793cdb51ef33cc9e069e16ba0a858c9e3baa9944f1b3624af25a"
  url "https://github.com/antares-sql/antares/releases/download/v#{version}/Antares-#{version}-mac_x64.dmg"
  name "Antares"
  desc "Antares SQL Client"
  homepage "https://github.com/antares-sql/antares"

  livecheck do
    url :url
    strategy :github_releases
  end

  app "Antares.app"
end
