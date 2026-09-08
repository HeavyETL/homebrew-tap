cask "otis" do
  version "0.0.0"
  sha256 "aa0f7368a9227496e1e5cd79469b61f2151ae2171011739f68db74d76d51ea15"

  url "https://github.com/HeavyETL/otis-releases/releases/download/v#{version}/Otis-#{version}-macos-arm64.dmg"
  name "Otis"
  desc "On-device dictation"
  homepage "https://github.com/HeavyETL/otis-releases"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  auto_updates true

  app "Otis.app"

  zap trash: "~/Library/Preferences/dev.szup.otis.plist"
end
