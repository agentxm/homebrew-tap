# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.29.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.29.2/axm-darwin-arm64"
      sha256 "d088bde11a43a5e417b023590c1649b44be2af75b0e1c91af306715bd6c6b979"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.29.2/axm-darwin-x64"
      sha256 "fcc34b89eafa12c5c1830e920474cad0183fa56fb388f2ad6b2cc01d3fc61f30"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.29.2/axm-linux-arm64"
      sha256 "b153423b42a14ce18d3b9fba480b43848f2d6f4410b73c3add4f1678b6f1cc81"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.29.2/axm-linux-x64"
      sha256 "29d1b1d47a95309ebec389ddfe28cfa94ce294917889d1a2aad72f50085b1ebb"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
