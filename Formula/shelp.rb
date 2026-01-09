class Shelp < Formula
  desc "AI-powered shell assistant - convert natural language to commands"
  homepage "https://github.com/xqsit94/shelp"
  version "0.2.0-alpha"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/xqsit94/shelp/releases/download/v#{version}/shelp-darwin-amd64.tar.gz"
      sha256 "3550d57a199250c65b1e2d1a3039d482b106eb7455aa492ff29c1cd73dc3a891"

      def install
        bin.install "shelp"
      end
    end

    on_arm do
      url "https://github.com/xqsit94/shelp/releases/download/v#{version}/shelp-darwin-arm64.tar.gz"
      sha256 "6d707066dc3d2bb91cc3c93efda45b12b50765604848574ae17032bb848ff374"

      def install
        bin.install "shelp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xqsit94/shelp/releases/download/v#{version}/shelp-linux-amd64.tar.gz"
      sha256 "f03a7988ce76e692be8cdb9f056985770155f7e1a072d62521eda0c42e218621"

      def install
        bin.install "shelp"
      end
    end

    on_arm do
      url "https://github.com/xqsit94/shelp/releases/download/v#{version}/shelp-linux-arm64.tar.gz"
      sha256 "27394ad8537224705ebf30614bbbaea22a2934a53d2ab62ee3f3375b8a9bfe28"

      def install
        bin.install "shelp"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shelp --version")
  end
end
