cask "kagan" do
  version "0.1.1"
  sha256 "93a5d0be2a73fcc2e65da98887f4637eb425b98134f94ea07a2a164b45cab982"

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
