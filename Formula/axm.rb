# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.33.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.33.1/axm-darwin-arm64"
      sha256 "7f4b3e059e0c761e05377b89912f47f50924226e1309047790d0c731781928eb"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.33.1/axm-darwin-x64"
      sha256 "1e847ceacf77170ce67c5c40bc46d24e281e94cb5df49ad1c82b43b68f3dffef"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.33.1/axm-linux-arm64"
      sha256 "1fcfcf04fdf69c90dd71906cd2a180e65ccef67bda57880bd58b0851e67c5b32"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.33.1/axm-linux-x64"
      sha256 "85743fab57a68ebc61198f8abf1f5d46b937f70b3af0b1b4b876a19b15e9c56e"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
