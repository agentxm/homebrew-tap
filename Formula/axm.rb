# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.32.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.32.2/axm-darwin-arm64"
      sha256 "c2e6c432ea83a62629d7abde310ffbd8c7ff068ff2b62b0ecbffb389e00890c3"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.32.2/axm-darwin-x64"
      sha256 "5856e7a44abc6602923098e0be712798b998c63b0143760db112f5bb09d5b602"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.32.2/axm-linux-arm64"
      sha256 "e8864bd9602ddcc6bb29547115fcd3983be1352743f6fd0d255e7719a967edf6"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.32.2/axm-linux-x64"
      sha256 "d6d0a1763b53933d2b3ff9df7f113b5cc3ec538e6647fcc8160d85417efa65a3"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
