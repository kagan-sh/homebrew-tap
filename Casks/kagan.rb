cask "kagan" do
  version "0.1.0"
  sha256 "919d8946bf40fb4333a5c785e4a11a100ecc6deccf7a5bcccae55d991bc451b5"

  url "https://github.com/kagan-sh/kagan/releases/download/v#{version}/kagan_#{version}_aarch64.dmg"
  name "kagan"
  desc "Desktop app for coding with agents"
  homepage "https://kagan.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "kagan.app"
  binary "#{appdir}/kagan.app/Contents/MacOS/kg"
end
