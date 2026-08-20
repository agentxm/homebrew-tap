# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.27.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-darwin-arm64"
      sha256 "8a53dae47f35c3b4ad4d828240d1f581c0ad52ebe55bcf9bc2af34620f28422f"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-darwin-x64"
      sha256 "b051af190d990661022a4b1f7acf30ee7e6889318aeacb4727cbbd2c8f6d7f8f"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-linux-arm64"
      sha256 "cc129bae3015154dfa7fd23489b53507936f2b3597472f0b63c9a0c8a223b2e0"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v#{version}/axm-linux-x64"
      sha256 "8c068a928993d8f0707d9be79556bba1d0de69f7437c398540f751ed50753f8b"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
