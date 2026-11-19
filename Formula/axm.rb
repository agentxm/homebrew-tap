# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.53.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.53.1/axm-darwin-arm64"
      sha256 "7a9df9020ac4f84f729cb47a4acb8e7c0f26037c4be64eb6e6387e948ed9d11f"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.53.1/axm-darwin-x64"
      sha256 "3444a920a0b6a1f1476afc3c3301703d68f29603279cce03b5d9a100550bf392"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.53.1/axm-linux-arm64"
      sha256 "86b70941920c5f724514c1a875e608afcd1fced207a144f47e1c5df1ac1fecb0"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.53.1/axm-linux-x64"
      sha256 "2faab39e342c22504d3daf5c4f4947ed6c79fc8295f4a64154435751d4031e20"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
