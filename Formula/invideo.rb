class Invideo < Formula
  desc "Edit professional NLE timelines, color correct footage, mix audio, and generate images, video and audio."
  homepage "https://github.com/invideoio/cli"
  version "0.1.0-rc.1"

  on_macos do
    url "https://github.com/invideoio/cli/releases/download/v0.1.0-rc.1/invideo-universal2-apple-darwin.tar.gz"
    sha256 "523ae4fe6df1bdeaf25b0ec76f6c7144b533a8281e3025203ea882a9d6651853"
  end

  on_linux do
    on_intel do
      url "https://github.com/invideoio/cli/releases/download/v0.1.0-rc.1/invideo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "39370476dcaffe9c363f4a248c7a0179598d0db79f374dd5e4403fded4e10c13"
    end
    on_arm do
      url "https://github.com/invideoio/cli/releases/download/v0.1.0-rc.1/invideo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8b984e874ed34b54a414366e07ef8995aaafdd015a181360265caf5e53cd4c3c"
    end
  end

  def install
    bin.install "invideo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/invideo version")
  end
end
