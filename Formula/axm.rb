# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.41.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.41.0/axm-darwin-arm64"
      sha256 "d42045d405555c2feb05f3310cec11e5b3e948234ba6c0e7539ab695f34ae1c7"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.41.0/axm-darwin-x64"
      sha256 "42ad84b376cd1c506743bc2a26f7b5f3dadce0639d0a792791ff2bf38a432373"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.41.0/axm-linux-arm64"
      sha256 "5d8bc67be9d3dbd8f971c974422197ee8d98dcabe327dad343c305d66ca4c8fb"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.41.0/axm-linux-x64"
      sha256 "5d3325ef854571ca11df1739f8807f3a0e3b3aa229f6933fe3561390ae35a13a"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
