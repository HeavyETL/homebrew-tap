cask "otis" do
  version "0.0.0"
  sha256 "9b07d841c7c833bb4e45639f3f4fe32643a33dd7c1e85565cf0d9653d2b742e6"

  url "https://github.com/HeavyETL/otis-releases/releases/download/v#{version}/Otis-#{version}-macos-arm64.dmg"
  name "Otis"
  desc "On-device dictation"
  homepage "https://github.com/HeavyETL/otis-releases"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Otis.app"

  zap trash: "~/Library/Preferences/dev.szup.otis.plist"
end
