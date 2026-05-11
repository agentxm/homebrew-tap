# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "The official CLI for AgentXM - Agent Experience Management"
  homepage "https://github.com/agentxm/agentxm"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-darwin-arm64"
      sha256 "cef5bd7c52eb3d5f02a044c4338bd50d5b312aee0927b54cb5b4e1dc375f9baa"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-darwin-x64"
      sha256 "d1aa83f292e9dd9c7b37c929a60624d60ebebad9535a18b54d1668a8a548d07f"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-linux-arm64"
      sha256 "4768d7a0336ef3eebe4acfc781a5da61e7940a06fbd1a163eb595861a3a26337"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-linux-x64"
      sha256 "07f4aa53e92a69010524bd0107f7a12b3892fcdfc99ccaadbbd7e6e8d5b45290"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
