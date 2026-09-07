# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.28.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.9/axm-darwin-arm64"
      sha256 "d92a5e37c940bae66099ffe3c16e6d61f57a496bf798d3a3c27f8a7327a9b79e"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.9/axm-darwin-x64"
      sha256 "d2f1c0283596f22d36851e540e25f884c7deaac44232a8ec5f7427b1400ad6af"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.9/axm-linux-arm64"
      sha256 "fd047d711bfd5fed58fe9516862c45b638ddbd0604df782b40df042fb3737e67"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.28.9/axm-linux-x64"
      sha256 "0b6380b9221be002d661e9aa3fb17699f791c3bf63493708e201173f525d6918"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
