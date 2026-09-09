cask "otis" do
  version "0.0.0"
  sha256 "19f60d4bfc3a702669f6e460db32ad7cb0d2b7daf6d53f03b7f92d80ff5797f0"

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
