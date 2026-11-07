cask "kagan" do
  version "0.6.0"
  sha256 "6f2b169bc5ade6c90e009eb43eb3bed05919e7494fb81cddc4558420c7cc2a0d"

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
