# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.33.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.33.0/axm-darwin-arm64"
      sha256 "6dff195085930275ebd77fb4aaa1fb53435e0b2fc53ac09e09e799f3d3011f83"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.33.0/axm-darwin-x64"
      sha256 "f9c6d7624135b3d2a9bb00a0db694d39ed8609a1cabdb3b61f691d2178683312"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.33.0/axm-linux-arm64"
      sha256 "fc020d27494faf7be5c31557c21a44693d87ddbe7c705894ccfdc67ac0c61340"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.33.0/axm-linux-x64"
      sha256 "4fafc4367a5a91a22812f9043606634ea995ae2de9e95fd26f5df03538224db0"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
