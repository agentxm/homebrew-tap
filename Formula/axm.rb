# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "The official CLI for AgentXM - Agent Experience Management"
  homepage "https://github.com/agentxm/agentxm"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-darwin-arm64"
      sha256 "cdc8e6b40d8f9cbaf7ca13f71fb73c53fec72f893d811aaf30c512d200599972"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-darwin-x64"
      sha256 "b2ca23cfbe01ad449c7c06616bd63821e0906d91a0a6286f664891f55603adae"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-linux-arm64"
      sha256 "e992bfb600f1dbd79bd23bca73a1e65206bce41d240071161a9da10620569df2"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/agentxm/releases/download/cli-v#{version}/axm-linux-x64"
      sha256 "2c0e3e869b7840dfa6aca4f23504b1d0bcde1ece3c784894864377d7d54db1da"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
