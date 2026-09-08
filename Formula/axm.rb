# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.28.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.12/axm-darwin-arm64"
      sha256 "5008fe951f83dc303fce93381c350d8312ec5977d996cb20251769420a7ff498"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.12/axm-darwin-x64"
      sha256 "28d9529944322c6f89d5cd3d5d12dfd8c0f048ae00c5b22edaff45be13557492"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.12/axm-linux-arm64"
      sha256 "17ea283444291ad4c6028405fbc0ac54ff748086d97b5ab833b186f3f18a1e8a"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.12/axm-linux-x64"
      sha256 "0fdc66d615ded01d2c4507f9db6be37c31636feef004136afea22eb009adfa9f"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
