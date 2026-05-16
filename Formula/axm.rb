# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "The official CLI for AgentXM - Agent Experience Management"
  homepage "https://github.com/agentxm/agentxm"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-darwin-arm64"
      sha256 "e636b50af95f9da5d53fbdca34df52a6aa672e28dde7659cf6a77969ed33842b"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-darwin-x64"
      sha256 "b22661fa6c29e0135535e9be77dcd6f0df4cda0c59c5c73150136a170f90ca1a"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-linux-arm64"
      sha256 "d223edd49b99d5e122a996ba8109a7af206f1f74948bedfa8a47853489690ea2"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-linux-x64"
      sha256 "73bd70309a2a129a304ecbd8deb1c2c6f4eba62275f2b166a1b23dba6fd69cda"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
