cask "otis" do
  version "0.0.0"
  sha256 "aecb6492b2e40b5f6a8332aa2dc71acfa136910ef080576fcb5439e206b65738"

  url "https://github.com/HeavyETL/homebrew-tap/releases/download/v0.0.0-test.1/Otis-#{version}-macos-arm64.dmg"
  name "Otis"
  desc "On-device dictation"
  homepage "https://github.com/HeavyETL/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Otis.app"

  zap trash: "~/Library/Preferences/dev.szup.otis.plist"
end
