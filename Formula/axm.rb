# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "The official CLI for AgentXM - Agent Experience Management"
  homepage "https://github.com/agentxm/agentxm"
  version "0.11.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-darwin-arm64"
      sha256 "75422a9f787bbd7631f0544b28f62fbf4a2de33d550efee29f644f5e202d4651"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-darwin-x64"
      sha256 "5e2e3c820df31aa7edefc0d4a7d63eb4a640b1ffb4a2e55308b22f60e5f7b4cd"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-linux-arm64"
      sha256 "dd7fba03cae276c6397ca776427f44e65a58aa3cab01dd64f61ef247e5a194fd"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-linux-x64"
      sha256 "bc3bcb64af22ba20eb38501d0326da027ba2b170a1ba03cfa70b451ca6186ee1"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
