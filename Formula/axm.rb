# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.32.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.32.3/axm-darwin-arm64"
      sha256 "fb089717376befb5ab5b7dc1eba0191e3e603f0ea27e2754e8e27f1a30258703"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.32.3/axm-darwin-x64"
      sha256 "83c030746d70c2215253602d302bc4683d36873a370cc56f87a4721b7107bde6"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.32.3/axm-linux-arm64"
      sha256 "15891acf72d4cf9b0e0f22e2abe4f9f286843702f4ffd420863ff40234101609"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.32.3/axm-linux-x64"
      sha256 "e78740b2c8e3c40b1cab804fd4957a82990551fce8aab4c5d02c059a84f36d98"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
