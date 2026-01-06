# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "The official CLI for AgentXM - Agent Experience Management"
  homepage "https://github.com/agentxm/agentxm-internal"
  version "0.1.0-alpha.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/agentxm-internal/releases/download/cli-v#{version}/axm-darwin-arm64"
      sha256 "c32d637790565b61cf4c7af5db3e2c7d579566bb9be1fbbd1178116da451fd00"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/agentxm-internal/releases/download/cli-v#{version}/axm-darwin-x64"
      sha256 "8875302a3b6362c975a95f4a784535b1026f0e150b5ab2d06208efcbcce791f6"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/agentxm-internal/releases/download/cli-v#{version}/axm-linux-arm64"
      sha256 "f04a58e33db28ccec9dba3de24522f04576e59631f6a04fd0f33709a050e78ed"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/agentxm-internal/releases/download/cli-v#{version}/axm-linux-x64"
      sha256 "d094bc59497e34a1384092ed1ca081a67c3799ec03a1ac3d9358265e9e303c9f"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
