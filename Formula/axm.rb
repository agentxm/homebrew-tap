# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.29.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.29.4/axm-darwin-arm64"
      sha256 "e1236b6c1846d1fef90c43b32b530710584440992ddb1cbf917af14751a0daa7"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.29.4/axm-darwin-x64"
      sha256 "e6a8553a51a710a70f2b6ad80d74a2f5e08a275adebe1cf692d0324aaf131bbd"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.29.4/axm-linux-arm64"
      sha256 "be4c7549575372337200402535fc4a9761b2617feca886c72a7cd2de7095380c"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.29.4/axm-linux-x64"
      sha256 "74470a0ec5ff5c41517db5898dec350a7707e936ef46a8665817cebe4e830ff2"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
