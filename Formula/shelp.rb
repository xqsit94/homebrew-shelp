class Shelp < Formula
  desc "AI-powered shell assistant - convert natural language to commands"
  homepage "https://github.com/xqsit94/shelp"
  version "0.2.0-alpha"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/xqsit94/shelp/releases/download/v#{version}/shelp-darwin-amd64.tar.gz"
      sha256 "27394ad8537224705ebf30614bbbaea22a2934a53d2ab62ee3f3375b8a9bfe28"

      def install
        bin.install "shelp"
      end
    end

    on_arm do
      url "https://github.com/xqsit94/shelp/releases/download/v#{version}/shelp-darwin-arm64.tar.gz"
      sha256 "2232602c8f7c6015e417d86871d8e70b7b8ec502f98c119ec4e769628cdf7610"

      def install
        bin.install "shelp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xqsit94/shelp/releases/download/v#{version}/shelp-linux-amd64.tar.gz"
      sha256 "2e7bfce087b05ede95c8a99ddcadfb0fc8d0635d3faeb6529ebdb0565d32c9a8"

      def install
        bin.install "shelp"
      end
    end

    on_arm do
      url "https://github.com/xqsit94/shelp/releases/download/v#{version}/shelp-linux-arm64.tar.gz"
      sha256 "d183fd0cf2c16f6be886bd63095fa3b3ea43a29e61700a1d60cd08c7b5137236"

      def install
        bin.install "shelp"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shelp --version")
  end
end
