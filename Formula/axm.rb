# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.34.0/axm-darwin-arm64"
      sha256 "1c53f55a1c26f063adae1815fa102418de01bcfb1171f0127b6386d4d6930b70"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.34.0/axm-darwin-x64"
      sha256 "6a3e1231f8886bac72c23200dc6e98e2a9b9418be491db1b036ae00a28bcacca"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.34.0/axm-linux-arm64"
      sha256 "edfac210cc782750d7f5f199f53fe4048b6a0a37233074ae2118ce2d2700eb84"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.34.0/axm-linux-x64"
      sha256 "a3fdf1dc6ff0f69038e0ea7ff66b1f248b6f3ad2a868267d367c1d4f0367fcca"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
