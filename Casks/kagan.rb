cask "kagan" do
  version "0.8.0"
  sha256 "c2e4fecdb5dd62d6b2e7b4bb00bd5432ce5237f5fd38b4423456025715ec00ce"

  url "https://github.com/kagan-sh/kagan/releases/download/v#{version}/kagan_#{version}_universal.dmg"
  name "kagan"
  desc "Desktop app for coding with agents"
  homepage "https://kagan.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "kagan.app"
  binary "#{appdir}/kagan.app/Contents/MacOS/kg"
end
