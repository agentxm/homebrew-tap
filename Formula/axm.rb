# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.49.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.49.1/axm-darwin-arm64"
      sha256 "1df9ff1862f5d273ead53bcc7c827ff94ee0ab412e180ddd64f84428ebb6265d"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.49.1/axm-darwin-x64"
      sha256 "c376fa9d332528980c793df6237a6e3de47d6c7a2eb07ebfbe98082ec11e8c77"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.49.1/axm-linux-arm64"
      sha256 "a4eb63dc68bd3f07fbf47b28be6bd5677b0cbf51f33f237332df9280fdc1949a"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.49.1/axm-linux-x64"
      sha256 "a44be68beced5dd3d76db9f122bb224aa5f164c6b5c70a21ffca07396192cb6c"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
