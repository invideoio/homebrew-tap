class Invideo < Formula
  desc "Professional video editor and 250+ AI models, from the terminal"
  homepage "https://github.com/invideoio/cli"
  version "0.1.0"

  on_macos do
    url "https://github.com/invideoio/cli/releases/download/v0.1.0/invideo-universal2-apple-darwin.tar.gz"
    sha256 "6f80d2026538bf2fbfe8a6d6501ac2b6f28acb89a3c0433f1f81793bbf6dc74a"
  end

  on_linux do
    on_intel do
      url "https://github.com/invideoio/cli/releases/download/v0.1.0/invideo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80b6da43037c4a86977062028f653024a371089298b71a988df23ecab0d058bf"
    end
    on_arm do
      url "https://github.com/invideoio/cli/releases/download/v0.1.0/invideo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "90ce6849ef13ec365de142f3fd4f295ddfb0ca588a1ba6bd42fbf2de95ada863"
    end
  end

  def install
    bin.install "invideo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/invideo version")
  end
end
