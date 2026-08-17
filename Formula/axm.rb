# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.27.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-darwin-arm64"
      sha256 "7517b21fa0444db9e028106686ab717d1f207d1cb9b6970fa2ffb975f44b7819"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-darwin-x64"
      sha256 "e82199da064a0e5c401ce16041d20b4417d16e730bb21425b76f38e5c73ec333"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-linux-arm64"
      sha256 "cc79ce2751e7d03b6fdf813a49bbc0aa58addc8c2be3d8f87ae676ccca5a6a93"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-linux-x64"
      sha256 "f4e6742b05bd1a03fae4d303955f4d9aaf91a937a0aded8eb24337696791881e"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
