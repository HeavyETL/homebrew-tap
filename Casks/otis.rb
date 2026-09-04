cask "otis" do
  version "0.0.0"
  sha256 "6276c8a33120f871d4b7967ffdf7abc3657fa92909ede012a40c47a77e3cdb46"

  url "https://github.com/HeavyETL/otis-releases/releases/download/v#{version}/Otis-#{version}-macos-arm64.dmg"
  name "Otis"
  desc "On-device dictation"
  homepage "https://github.com/HeavyETL/otis-releases"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Otis.app"

  zap trash: "~/Library/Preferences/dev.szup.otis.plist"
end
