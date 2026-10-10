# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.44.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.44.0/axm-darwin-arm64"
      sha256 "170b6a90042eb586d3e0473c18fe9bf81b243f4c65779535fff7718879a9a82e"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.44.0/axm-darwin-x64"
      sha256 "b3c36ebfbb5f741de0e58248527431977a8d76f2078725b73e4ff451a52a9677"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.44.0/axm-linux-arm64"
      sha256 "f3a0c83e720dd21b73f1711dab04130b61b6d5e787b4351629927e4274702fa7"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.44.0/axm-linux-x64"
      sha256 "af586ea47c4d0a57bff28c79c118c91a428662c0e6097dc5a68feb70be67f233"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
