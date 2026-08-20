# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.27.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-darwin-arm64"
      sha256 "fe964ed36d3546f7cf739ff9dea9be4f34eb6f2a6535beade4be09629fecf920"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-darwin-x64"
      sha256 "4db984f409f7ca39a4d2c73fde1e7b67639764877a4513c2e2229fb64785bf38"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-linux-arm64"
      sha256 "cf8b7aba83d6007021eb4a21be6be4261f187866e872c768ca2d5e0a3f38fb71"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-linux-x64"
      sha256 "948c459e18888ada4096e3b58f9dc905bcd5ede4e379e04719f5d1e33f3ff45c"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
