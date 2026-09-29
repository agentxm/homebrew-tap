# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.37.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.37.0/axm-darwin-arm64"
      sha256 "24dd6ea8ee34f98c3d15c6f4332f2c7195ecc1fc328d58c5b500e33c7d1c639d"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.37.0/axm-darwin-x64"
      sha256 "332a234fc7bff8dc9db7312b9bb9098645b7de390188a11880acfdb07c303cc7"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.37.0/axm-linux-arm64"
      sha256 "b30f24d14ed2bacf9f8c3dcc2e603a54fccc098c0caf2c0b13f008501e78638e"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.37.0/axm-linux-x64"
      sha256 "83569aa879163d1559c4481915419914395718c0228f5b9e72601d34ee903607"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
