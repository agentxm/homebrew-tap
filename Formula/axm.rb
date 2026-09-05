# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.28.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.8/axm-darwin-arm64"
      sha256 "de8569f2734807f3f4a78b914dcc0cb542c1d2e6878d6501dc39632ba77cca14"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.8/axm-darwin-x64"
      sha256 "b28d98c4e37c693f39fda4fa8c3a26a1d4c24f34e7bb395cb11dc98591ed954b"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.8/axm-linux-arm64"
      sha256 "0dc10233e44e7f2b1f6032fe51f45b9ae44d17bf633f187994243b4e6f0612ee"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.8/axm-linux-x64"
      sha256 "b84458550f8e979ec5acde87814507c1394600dbcd795cae33a1db0ba1388580"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
