# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.29.0/axm-darwin-arm64"
      sha256 "a787ddffb6d69a9c299491fe93d29b9b434fc45551c5daa1d7ccfcc7d03651a5"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.29.0/axm-darwin-x64"
      sha256 "9c8be009a505a1b1a6effb0ad7253d0e7074eaaf45db856bd873b298bfca788c"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.29.0/axm-linux-arm64"
      sha256 "8cf6f5dd45a8bb51556596f18d622bd0da2be94daccef238d948674c39f92be2"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.29.0/axm-linux-x64"
      sha256 "72544511d43d08d8a9d2f1e68adfb09986e115da72eac3d1a8f731eb18ef1043"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
