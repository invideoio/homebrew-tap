class Invideo < Formula
  desc "Professional video editor and 250+ AI models, from the terminal"
  homepage "https://github.com/invideoio/cli"
  version "0.1.0"

  on_macos do
    url "https://github.com/invideoio/cli/releases/download/v0.1.0/invideo-universal2-apple-darwin.tar.gz"
    sha256 "4adadd66b37ff3339a816799a99b2bd01b1a6b0bef0d9626426504697ca2a5f5"
  end

  on_linux do
    on_intel do
      url "https://github.com/invideoio/cli/releases/download/v0.1.0/invideo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f11ca21695f593b6f985401b98d4b89ab1f6cfcc708ea4578f0bb3b58bedfc5"
    end
    on_arm do
      url "https://github.com/invideoio/cli/releases/download/v0.1.0/invideo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d9012f3d5ac9ae9ee89e5ca680b2bc37b78ea0d2baac705cd6d256ec6f52b625"
    end
  end

  def install
    bin.install "invideo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/invideo version")
  end
end
