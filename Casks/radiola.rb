cask "radiola" do
  version "7.0.2"
  sha256 "834d07f0e55ea874e1270284745123c3d6b312a2618ed5235fb0d5290f8f31e9"

  url "https://github.com/SokoloffA/radiola/releases/download/v#{version}/Radiola-#{version}.dmg"
  name "Radiola"
  desc "Internet radio player for the menu bar"
  homepage "https://github.com/SokoloffA/radiola"

  livecheck do
    url :homepage
    regex(/.*?Radiola[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    # Use the github_releases strategy to ignore betas with pre-release tags, and match
    # the version in the download url because the release tag can be vMAJOR.MINOR
    # or vMAJOR.MINOR.PATCH but the version is reliably MAJOR.MINOR.PATCH.
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        curr_asset = release["assets"]&.find { |asset| asset["browser_download_url"]&.match(regex) }
        next if curr_asset.blank?

        curr_asset["browser_download_url"][regex, 1]
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Radiola.app"

  uninstall quit: "com.github.SokoloffA.Radiola"

  zap trash: [
    "~/Library/Application Support/com.github.SokoloffA.Radiola",
    "~/Library/Caches/com.github.SokoloffA.Radiola",
    "~/Library/HTTPStorages/com.github.SokoloffA.Radiola",
    "~/Library/Preferences/com.github.SokoloffA.Radiola.plist",
    "~/Library/WebKit/com.github.SokoloffA.Radiola",
  ]
end
