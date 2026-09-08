# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.28.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.11/axm-darwin-arm64"
      sha256 "1ab6b7fba196eee01339358b7b8be1af5be717bf3a4b563906df033c3638bd31"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.11/axm-darwin-x64"
      sha256 "075f9aa51ba2a451f82a6cbe01fd91a874031b1ef178a560567d9f9d3911b611"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.11/axm-linux-arm64"
      sha256 "910e9669a0ba57b8192508b1c8651106fbf985fd1cc5a90230446bcac96a2a51"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.11/axm-linux-x64"
      sha256 "94497d65da99407964995927c31aecef404bf031dd9ff918d9fc9bc5043bd376"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
