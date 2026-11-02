cask "kagan" do
  version "0.1.4"
  sha256 "bec7826b717831b8d5690ce55aba887d5b5f07e39f473b429a8e5e8e1d7a1f04"

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
