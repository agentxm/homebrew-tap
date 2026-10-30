# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.51.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.51.0/axm-darwin-arm64"
      sha256 "fe65afaf50f6ecfb4c1a084e5f7a7b60ef8f9924bba0ac0654e12a02e0e7e030"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.51.0/axm-darwin-x64"
      sha256 "77fa5850123c91e0e90ac57734715fe9271da66af50a1a95ba38d3b102581b4d"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.51.0/axm-linux-arm64"
      sha256 "4fd82c7c0d6e009cc8875a26f1ddcb9aa680e0a3dba0bcc455181bac526e8cbe"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.51.0/axm-linux-x64"
      sha256 "bce9f50b87b4b262ea671c2e8aade5a6b16db8814ed3cbf3d936f0e6370a8828"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
