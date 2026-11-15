# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.53.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.53.0/axm-darwin-arm64"
      sha256 "e624fa37f0b752d53187d419c92aaef1aeede60418170ae5999be0dde7424acf"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.53.0/axm-darwin-x64"
      sha256 "bb18420fb7a936addf918f4e82727752e6a2b66805d0c876e9afb117d93a35d9"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.53.0/axm-linux-arm64"
      sha256 "15169b7bac79c4c2ddd9e031b01c181ced94cd644b9c9a05b275160edc4adeaf"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.53.0/axm-linux-x64"
      sha256 "2fca74eaa46d1c74cd2018ef9e74855540ccd2b0a737f0469f56d96006f28280"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
