# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.29.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.29.1/axm-darwin-arm64"
      sha256 "335399ab7b5715260a7abebc903a7be3114ea650fdb78ef289bec4f0897b0860"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.29.1/axm-darwin-x64"
      sha256 "da305edb1560eb502cd60bc771c53c939edd71ca3767630c2b5dadbab4242994"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.29.1/axm-linux-arm64"
      sha256 "ad1373157fc62a1403fb170e3cede800117355df9852ead794c2a05e6323049d"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.29.1/axm-linux-x64"
      sha256 "18fa064c0bc18a641300e1627a8f18ab0219e83f4702caed76eaee240f004de3"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
