# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "The official CLI for AgentXM - Agent Experience Management"
  homepage "https://github.com/agentxm/agentxm"
  version "0.0.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-darwin-arm64"
      sha256 "31a1ceac9345431337bf80cf52e46f6865b8b94d6a284189711ee8926af836e0"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-darwin-x64"
      sha256 "130520588abab22882f418ae14a8dafe06cc8a3713f4205b5f0cb44bd23858db"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-linux-arm64"
      sha256 "596d416a231f96672f67413d930fb867eaaed5a5a2f577def89a130c5f7db6e5"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-linux-x64"
      sha256 "ccd78da7fd74019c2634d647d28e33eda8cf76f41ca13abe09542a7d014d79a2"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
