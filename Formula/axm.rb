# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.39.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.39.0/axm-darwin-arm64"
      sha256 "b44c90ce6af09c47e7fb4a478062176107e6538473279100ee3d4cc2faa407e0"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.39.0/axm-darwin-x64"
      sha256 "5557e207c8f132f1bcd610fb5011af61d16df7eea84af81a4f618287191e219a"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.39.0/axm-linux-arm64"
      sha256 "aa119cdd3bb928bfb65105ff06bc93959db13662fcbd7e1cec1cc918a8d3bffd"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.39.0/axm-linux-x64"
      sha256 "f77035b6db2d457991e228b2433bc66520cf47bbc52ca0d0bcfeb2c5cfa6a0fc"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
