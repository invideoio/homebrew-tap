class Invideo < Formula
  desc "Professional video editor and 250+ AI models, from the terminal"
  homepage "https://github.com/invideoio/cli"
  version "0.1.1"

  on_macos do
    url "https://github.com/invideoio/cli/releases/download/v0.1.1/invideo-universal2-apple-darwin.tar.gz"
    sha256 "a88830baf9c0402c850f4b6a1b91b880232c366bd1b092a9e77cbecfb339eb77"
  end

  on_linux do
    on_intel do
      url "https://github.com/invideoio/cli/releases/download/v0.1.1/invideo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1f28e63c19dea157b8b19d7b17315bedd278801e457867ac88ccc376f95a4af2"
    end
    on_arm do
      url "https://github.com/invideoio/cli/releases/download/v0.1.1/invideo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e011f601e684e56d9af6718ec7a4bc4d1799e16be33a0230b2c1816e76642fb"
    end
  end

  def install
    bin.install "invideo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/invideo version")
  end
end
