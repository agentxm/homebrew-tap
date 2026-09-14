# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.30.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.30.2/axm-darwin-arm64"
      sha256 "fc97310ef62f455ef0b6e234c685dc081b3e4692242e099661419b0df99d27f7"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.30.2/axm-darwin-x64"
      sha256 "20d72e075ecf17cd80de0f7be44dc34c39a3a25093ef24bd2c00a678f1b0d64b"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.30.2/axm-linux-arm64"
      sha256 "ca2299626017bbd9041af0c508df4b439ac9c01b030f3edac22faa99cfb7f5a2"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.30.2/axm-linux-x64"
      sha256 "a55f854e27104e1b6e07626ee8c6b6be349a09e029085d31c6cfdbe88b6a7cdc"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
