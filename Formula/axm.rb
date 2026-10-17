# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.49.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.49.2/axm-darwin-arm64"
      sha256 "a9f37d7bf37d0e56c4e623d82aea0b717e6b39afa42ecd9cf6d49089892a8927"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.49.2/axm-darwin-x64"
      sha256 "99ac2725d7ce84a73bc6272f761678cf7e1dc4c5961943cbc0f30f39a85fd01c"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.49.2/axm-linux-arm64"
      sha256 "eac0fffe32e9573f970bb0ed94991f397d99112c025567ecf93280c7523c2495"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.49.2/axm-linux-x64"
      sha256 "825453cdf7276b1ed766fbcd3f864df0bff1e4165ae3d6c20bd8ba1361abe1aa"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
