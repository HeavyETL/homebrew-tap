cask "otis" do
  version "0.0.0"
  sha256 "acdf5ae2f3e5bb3b4342a26455457fe8e41406fd5929752bda573fb4386cb9a4"

  url "https://github.com/HeavyETL/otis-releases/releases/download/v#{version}/Otis-#{version}-macos-arm64.dmg"
  name "Otis"
  desc "On-device dictation"
  homepage "https://github.com/HeavyETL/otis-releases"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Otis.app"

  zap trash: "~/Library/Preferences/dev.szup.otis.plist"
end
