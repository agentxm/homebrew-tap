# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.42.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.42.1/axm-darwin-arm64"
      sha256 "a680f4b847c686b2bb89de97490b494da6b61837647cdb4e1c4e1687893a9c8e"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.42.1/axm-darwin-x64"
      sha256 "29560503449cc9adbddea7ab1e4fafee3341e36ec5a566b5aad91ac005ab7421"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.42.1/axm-linux-arm64"
      sha256 "26a028a897903905cb576a71715e9f4dfbe61e14e59573e756fe347a2cf2e57a"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.42.1/axm-linux-x64"
      sha256 "2446abf7a9d3ff2a7ce67bb4e8db2da0e071cb750891dba333b98c75c5da31df"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
