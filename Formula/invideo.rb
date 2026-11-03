class Invideo < Formula
  desc "Professional video editor and 250+ AI models, from the terminal"
  homepage "https://github.com/invideoio/cli"
  version "0.1.3"

  on_macos do
    url "https://github.com/invideoio/cli/releases/download/v0.1.3/invideo-universal2-apple-darwin.tar.gz"
    sha256 "ed16bd1c062059017bf541445c07997c682d2d99d8012bc48b6ef78e3337a4d2"
  end

  on_linux do
    on_intel do
      url "https://github.com/invideoio/cli/releases/download/v0.1.3/invideo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8bd7bc284643d822796bf2e4a5d6a8bb9824bfa4d4d2621145ddba5332ce07d6"
    end
    on_arm do
      url "https://github.com/invideoio/cli/releases/download/v0.1.3/invideo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a12b483f2c74efe22fb355316159a8c2172f6325b006454fd38221244b6838ad"
    end
  end

  def install
    bin.install "invideo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/invideo version")
  end
end
