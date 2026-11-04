cask "kagan" do
  version "0.3.1"
  sha256 "6c3ea026078c1748765f77181c4bc54e2ff7bede362098336750fbc17acdc84d"

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
