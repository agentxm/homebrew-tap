# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.47.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.47.1/axm-darwin-arm64"
      sha256 "f0eb2454ebabb2240ed41b38e5eec2bfa0f36d2a4063980bdfe85f3784126868"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.47.1/axm-darwin-x64"
      sha256 "97f7552b8522195f9edddccab7ac77acbfd82fa31a8391fb34587745ef3c02d3"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.47.1/axm-linux-arm64"
      sha256 "eeff1f5b6219360678b6f52084fbbdd240ffb941d8c0000a207c73abd277e254"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.47.1/axm-linux-x64"
      sha256 "9aeadc912cb0da2f22960980f17608d15f15e327e48441e132e139c51a8e5a34"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
