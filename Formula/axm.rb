# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.43.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.43.0/axm-darwin-arm64"
      sha256 "15111e1fbdfb2b21dcb5a5bdac33d96eba4671c1d66449177058c8f4c80129f5"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.43.0/axm-darwin-x64"
      sha256 "c054690656116798015ae2ff7640668a2c899ce5acde917ba69179d1f69b6c7b"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.43.0/axm-linux-arm64"
      sha256 "bffd41a55084cdcc9f4a5b2f76fdf16d28b26ce90a0d95079fbe4cad8e64e28b"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.43.0/axm-linux-x64"
      sha256 "d8671ddf13531254a9ed63d5083edd171fb11502144a3d78435c51cc3de1da6b"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
