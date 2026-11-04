cask "kagan" do
  version "0.3.0"
  sha256 "5208f90035bb060d2ccd213089e45d42bcca3648708064936814ae2c1972d5af"

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
