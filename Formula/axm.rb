# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.32.0/axm-darwin-arm64"
      sha256 "77b5ba1b65ed320e6d34af1a0c07afcd85738723bc680691f8d6164252400a88"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.32.0/axm-darwin-x64"
      sha256 "1c97fcbd9cf20242405740ac129586a3393fb8c6aa58c6fc9794b7a18a07c6c8"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.32.0/axm-linux-arm64"
      sha256 "ecf1840ddc631ae4b34e8c084775ea6c38cdeb0304a4ba47f2ebd5419ea01802"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.32.0/axm-linux-x64"
      sha256 "6bb7a391e2c611cbda4fd81420010d41dae5ce8edf2ede0d81f3812a9161620d"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
