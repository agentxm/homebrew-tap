# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.52.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.52.0/axm-darwin-arm64"
      sha256 "6cbd97ff49ef5e21f29509d5f6665528a0608d5cae480ac089ac717dd663e538"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.52.0/axm-darwin-x64"
      sha256 "62c20a3f739a77defc5f55c859caed05bdb3f171a1e2d5496b41b22c007da4a7"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.52.0/axm-linux-arm64"
      sha256 "c8efb0d4728f9f7f0de23eb3efbc752e6f1135eced700ac186820dd1ef0d3f21"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.52.0/axm-linux-x64"
      sha256 "3f6c01649e6d65cbbf11cf14b80e679d31abfc35156107cdf882f5ffbe631277"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
