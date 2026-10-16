# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.49.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.49.0/axm-darwin-arm64"
      sha256 "9c6e9a666a4479f339eb41c49ca5ace243052664eb617e511e9ca54e3dd2c8e6"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.49.0/axm-darwin-x64"
      sha256 "f3b50239cea25f23f3f0672832d5d6688778221e89f0ce8f7f76184e5f8ad312"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.49.0/axm-linux-arm64"
      sha256 "308da8e6a233672a87fd454927a73d5bb40fc1c6a936ea2c9120f0ae1cff826c"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.49.0/axm-linux-x64"
      sha256 "6796860c9815747e4b00b6e9165861d1b9072b75a11918ea4b72558e7ac32f55"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
