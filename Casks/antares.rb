cask "antares" do
  version "0.7.28"
  sha256 "9e9654aa18203b2fc51892b766811e7ed12c4033ded1289e733d0ba62a0888d1"
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
