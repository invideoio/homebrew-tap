class Invideo < Formula
  desc "Edit professional NLE timelines, color correct footage, mix audio, and generate images, video and audio."
  homepage "https://github.com/invideoio/cli"
  version "0.1.0"

  on_macos do
    url "https://github.com/invideoio/cli/releases/download/v0.1.0/invideo-universal2-apple-darwin.tar.gz"
    sha256 "03f7bed5816459d2c53bf95c0c24e294059563f1783b4b1f0f8eac7f84a87dc5"
  end

  on_linux do
    on_intel do
      url "https://github.com/invideoio/cli/releases/download/v0.1.0/invideo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21cd13d34a9cc42c84ea282e8394dddf4aeb664d3b75524d6245b4388293be03"
    end
    on_arm do
      url "https://github.com/invideoio/cli/releases/download/v0.1.0/invideo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "80b136a4eb9561e074ec06cac756a1e40529c7fbed584fb46a657c6a6f9feb51"
    end
  end

  def install
    bin.install "invideo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/invideo version")
  end
end
