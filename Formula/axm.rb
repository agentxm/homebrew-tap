# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.31.0/axm-darwin-arm64"
      sha256 "24191470df25ed16493f0c720f33f9579397ed916bebed5a32a7ce4e8e371370"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.31.0/axm-darwin-x64"
      sha256 "0ab8aecb1e0f2f282a7837c25ac78607b508b9ace03ff8645bd34b2cd1dc1216"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.31.0/axm-linux-arm64"
      sha256 "ab319e6ea3677bfe25f2684acad556ca526b6fab81747720106476f6609bb688"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.31.0/axm-linux-x64"
      sha256 "5ebe2e59ec5d7bdfa51c13d97d26dc79bb84162acaaa3abfe6e776b04590dff8"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
