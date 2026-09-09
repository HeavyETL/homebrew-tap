cask "otis" do
  version "0.0.0"
  sha256 "061aca4b6046f7d4185936009455f49207813e5d1c8f8b915f476e83dd01108f"

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
