# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.31.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.31.1/axm-darwin-arm64"
      sha256 "436ae9a700411291a51d0b9b2b4f9ff2d074f47a3c40e99f814d714670ac1db9"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.31.1/axm-darwin-x64"
      sha256 "f406d61791e257bb67d24df006a060ea1fcda4795aef07552f70d418436bdfa3"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.31.1/axm-linux-arm64"
      sha256 "150c81a674be9f9c9453540e1a43cafb789f8c97fea0316bfb3725eedb7e10f9"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.31.1/axm-linux-x64"
      sha256 "fb1fb9f94aa202c7c43107a8532458d165772dccca14a6f46b6ccc5cf14b22f9"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
