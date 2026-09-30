# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.37.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.37.3/axm-darwin-arm64"
      sha256 "b8c49eae2db36c6171edf26ba2fc8dfd203fb1d3369c5a76e3a335b1f84b6656"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.37.3/axm-darwin-x64"
      sha256 "0cde955e94246c126bfafd5d3180d46e3220f0b02412b8a61ad1a41162b1c871"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.37.3/axm-linux-arm64"
      sha256 "de420cd6fe364d700f09ebe932173dbc66d1c177919d4c5b8e803909114021c2"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.37.3/axm-linux-x64"
      sha256 "47b84bbc31d77187ef835857b3a4b3f05f335d3b183526895775ccc1f24eccba"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
