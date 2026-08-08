# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.25.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-darwin-arm64"
      sha256 "60a31edf21bca79c452f592618b95866cdd656e07c327ee9c7c8fe6248a49230"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-darwin-x64"
      sha256 "d8057364c265c3272dcc7d3b376fbb1d14cc0f1367105e2eb2b80d183e628f16"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-linux-arm64"
      sha256 "d6e58d0efb019d5043fbcdb858c87d3dbc520388bbb18b923feeaa5cb04e9640"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-linux-x64"
      sha256 "7c634917b279c6e077cf4d3bcd6bf2ac1ab026fbb870efeba29d34ecf849861e"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
