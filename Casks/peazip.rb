cask "peazip" do

  name "PeaZip"
  homepage "https://peazip.github.io/"
  version "10.0.0"
 
  arch arm: "aarch64", intel: "x86-64"
  sha256 arm:   "f60f0ea9ea1cdc7b66454679c7ee2c0f3afb87dad00ac18945d3b879b1ef43b9",
         intel: "8b17b71dbfedfe329af4ebb6cd9f39d571f2f3cf211226502e5af22ce233f1e0"

  url "https://github.com/peazip/PeaZip/releases/download/#{version}/peazip-#{version}.DARWIN.#{arch}.dmg"

  app "peazip.app"

  caveats <<~EOS
    1. You may need to run the following command to use PeaZip.app (*):

      xattr -dr com.apple.quarantine /Applications/peazip.app

    2. As PeaZip's compiled binaries are unsigned, they will ask for permission to access certain paths on your machine the first time. On most macOS system versions it is sufficient to respond "OK" once to the system's permission request.      

    (*) If the system shows the error message "peazip.app is damaged and can’t be opened. You should move it to the Trash" or "peazip.app cannot be opened because the developer cannot be verified" the first time you run PeaZip, it simply means Safari has applied the "quarantine" attribute to the downloaded app package. Those warning messages are issue because the application's binaries are not signed (M1 version is simply ad-hoc signed, Intel version is not signed): to fix the error open the Terminal and run the aforementioned xattr command.
    
  EOS

end

