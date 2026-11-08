cask "kagan" do
  version "0.7.1"
  sha256 "7935adbbe48f0f7a20e8f8279d7c8899fd1b2b2ea0eaafd5140e337bbb098d32"

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
