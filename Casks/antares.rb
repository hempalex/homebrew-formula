cask "antares" do
  version "0.7.29"
  sha256 "8567b137b0328e86bd00c0e43334c63f4902923923364725c99e8d222df319bd"
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
