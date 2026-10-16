# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.47.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.47.2/axm-darwin-arm64"
      sha256 "f41c624a52069564ff795fe1a75903d7e04b6ecbbeaf1c83f4ae77993e07a939"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.47.2/axm-darwin-x64"
      sha256 "3954c16240c3e89749af42709afba02cc267230a60cab08a519d4e482f4ea4b4"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.47.2/axm-linux-arm64"
      sha256 "e790d812749a2c462e115603f52bbc1255b5dc76b3641708427082337dcfb1ac"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.47.2/axm-linux-x64"
      sha256 "6c22d8c071a49001fa4c4180bd9a1c4ca60bf812fa03acae376b38f8fd72d348"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
