cask "otis" do
  version "0.0.0"
  sha256 "762bac739ee77de904d1dfec912d45530b840c9634e9844dfa9619df42338944"

  url "https://github.com/HeavyETL/otis-releases/releases/download/v#{version}/Otis-#{version}-macos-arm64.dmg"
  name "Otis"
  desc "On-device dictation"
  homepage "https://github.com/HeavyETL/otis-releases"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Otis.app"

  zap trash: "~/Library/Preferences/dev.szup.otis.plist"
end
