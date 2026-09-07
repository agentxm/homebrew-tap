# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.28.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.10/axm-darwin-arm64"
      sha256 "450a6a2a977e78ceaf729e4eb06d996a91f0d54325d169aab21f0d1993ddb5b5"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.10/axm-darwin-x64"
      sha256 "3d0106c11da98aab3cf459c6273e6b300f7e52237bd5cf9d9167f5de24f39989"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.10/axm-linux-arm64"
      sha256 "ec97aa5e33770fb9fe8538c7cf6d8fb80cc8bc78c09fe7d7123afa3eb3fcd441"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.10/axm-linux-x64"
      sha256 "e94bae63018cffe676630433b4935dfd5a21290e02a6edac862cc81b63e86cea"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
