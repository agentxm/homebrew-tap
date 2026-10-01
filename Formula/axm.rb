# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.38.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.38.0/axm-darwin-arm64"
      sha256 "ba8c6fbf9e11e7dca50bebb36a5dfdf02a755e1021ed6ca3f110feb6c63dce88"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.38.0/axm-darwin-x64"
      sha256 "a7d951480a6ced484494a074f9edbde08b53f697322c3eef6b61abd27ab55f97"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.38.0/axm-linux-arm64"
      sha256 "b6cca0d2e0acaed534862a0a845868260002dd00310bc0e284bce12eae359bef"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.38.0/axm-linux-x64"
      sha256 "839e810ceb8ef320cbfe5d507f2d17bad66e77db08a2bec141037500b99eef88"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
