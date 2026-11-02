class Invideo < Formula
  desc "Professional video editor and 250+ AI models, from the terminal"
  homepage "https://github.com/invideoio/cli"
  version "0.1.2"

  on_macos do
    url "https://github.com/invideoio/cli/releases/download/v0.1.2/invideo-universal2-apple-darwin.tar.gz"
    sha256 "8c2c3963ff96b8b7fb77c4766a9cd71d41fa158b84e9ac911e386e96a1f5d3cf"
  end

  on_linux do
    on_intel do
      url "https://github.com/invideoio/cli/releases/download/v0.1.2/invideo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3670f08444fc0f07d106ae5bfc875f1edbedc3a958a383c0338f007930d7f483"
    end
    on_arm do
      url "https://github.com/invideoio/cli/releases/download/v0.1.2/invideo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "76ffb07980c46e323e7afc1b266c511448ceefcdfea0fe83c0db6ba991715680"
    end
  end

  def install
    bin.install "invideo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/invideo version")
  end
end
