# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.26.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-darwin-arm64"
      sha256 "121baf22be4acefba651a98406e7331ca47233c3f0320e1b784386b28a0d5729"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-darwin-x64"
      sha256 "d163df47cba1a2aa048fa481206047c07b1c19cb4e27aa0ee3fb18b141671487"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-linux-arm64"
      sha256 "b982f5b615b833b8960aaee9ae8cb70b1021a9e7aa8eb5d7c26b479a552363c3"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-linux-x64"
      sha256 "90009c0be8a35bf1245426326d791dccdaa3e7784d35439cb1eaa181e561e225"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
