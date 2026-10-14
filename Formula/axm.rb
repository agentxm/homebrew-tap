# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.46.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.46.0/axm-darwin-arm64"
      sha256 "e2bf35439b41da7b82930b77162c270567390487e96d58db1e9b30388a389428"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.46.0/axm-darwin-x64"
      sha256 "7ed70b908b3bff638f4a5d94fb19f2dacf00091381816c0a5a84fd09f50677cb"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.46.0/axm-linux-arm64"
      sha256 "89b9a28695490892cb4c0cbc795a26fb10aa9fc536ac69b8bc62bacd6d6bbc03"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.46.0/axm-linux-x64"
      sha256 "eef64b0016f325febe293ca4b4b33d68b69dd20a34a5311a28ad8c30c4e5f047"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
