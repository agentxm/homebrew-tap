# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.50.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.50.1/axm-darwin-arm64"
      sha256 "a353b646cd94b4ce8311e240394a32d3a24e50b7140c38162d3f150e1e0a059b"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.50.1/axm-darwin-x64"
      sha256 "0ee9314a151c100af1d92bae100375f0372deca67b6e1853dd1851f46df012b1"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.50.1/axm-linux-arm64"
      sha256 "20329adfa495ae8c9f46c805fde3d831f8015a1ae41d6edc671a93cad0ecb84d"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.50.1/axm-linux-x64"
      sha256 "415eea0b29138011889a4deaaa130c6204a0bbc246abe29b58500df65123adc8"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
