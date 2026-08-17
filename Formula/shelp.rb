class Shelp < Formula
  desc "AI-powered shell assistant - convert natural language to commands"
  homepage "https://github.com/xqsit94/shelp"
  version "0.3.0-alpha"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/xqsit94/shelp/releases/download/v#{version}/shelp-darwin-amd64.tar.gz"
      sha256 "ec3d9a6cf82335123cca739b2b2ede6419b8bfee4da8c4871204063f43cbc40d"

      def install
        bin.install "shelp"
      end
    end

    on_arm do
      url "https://github.com/xqsit94/shelp/releases/download/v#{version}/shelp-darwin-arm64.tar.gz"
      sha256 "ba2363ba41ace1dd75884e6710dd4033b850c8734c3ce637c08f41437942a7f6"

      def install
        bin.install "shelp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xqsit94/shelp/releases/download/v#{version}/shelp-linux-amd64.tar.gz"
      sha256 "9629d0398f651e8ac8915f2eafd5d331b595aaf36283cd0bf6be18c294193d60"

      def install
        bin.install "shelp"
      end
    end

    on_arm do
      url "https://github.com/xqsit94/shelp/releases/download/v#{version}/shelp-linux-arm64.tar.gz"
      sha256 "2d33d21780738c04057d822a4b181ea9d5888283f3ed79f5b40ec7d21521fc27"

      def install
        bin.install "shelp"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shelp --version")
  end
end
