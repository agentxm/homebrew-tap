# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.50.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.50.2/axm-darwin-arm64"
      sha256 "9e37ac6e79b0b76e00bd717c4ff0e292e4019d0a6c94159fe40a8fd8d137f9f5"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.50.2/axm-darwin-x64"
      sha256 "ee9994c8988c329f1ca2a14965ad1a3618bf24a0c77c4b014c1a59d092e40cd3"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.50.2/axm-linux-arm64"
      sha256 "d5f602afc70ff5b5808060674de8e22604d1dcf0d08046b5fdb96812eb94f072"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.50.2/axm-linux-x64"
      sha256 "51052923ac1af2c97f075bdde80045f458d186d05010001da9c1d529e0dc39c8"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
