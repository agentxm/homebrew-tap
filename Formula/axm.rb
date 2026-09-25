# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.35.0/axm-darwin-arm64"
      sha256 "0dc2d3f459bfbe2995fe9a797dbd14a71dd34738a42d2be95a9d34dbc07e40b8"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.35.0/axm-darwin-x64"
      sha256 "9756835c66e8e30d10a6326dcfc140ee351a21e20e1bdfffa10f3b6af23770d6"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.35.0/axm-linux-arm64"
      sha256 "5d773b334eef5d0c908de0ea12166d85c922574612cefcf62f744e1e36df5f73"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.35.0/axm-linux-x64"
      sha256 "dabf42c5cc68064ee9bfb77c60f6647c8edae2e9d5927498b1009982ee02f60d"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
