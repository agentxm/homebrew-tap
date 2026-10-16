# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.48.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.48.0/axm-darwin-arm64"
      sha256 "f6abebe1eca4f92968a9c504ba56cbaaf88054c4927cdc8a8abe2d43570bf08e"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.48.0/axm-darwin-x64"
      sha256 "dfe86fcbce85f339f1ca9e3f2d7fc84a5ee0a1b026411ef5a657b4f4b127020a"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.48.0/axm-linux-arm64"
      sha256 "820cc7006d10a56d860fbbd98e5affbc27dbf64bddb52241b2dcedda4e80c7eb"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.48.0/axm-linux-x64"
      sha256 "d9fa3f5442cfe00a371b0e8f62973914c765f243cc396b3b7d33d008ec8f2329"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
