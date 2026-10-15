# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.47.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.47.0/axm-darwin-arm64"
      sha256 "f4de770d023cecdf66746744ae8fc444e5c7aa71af3cea87019525eefb26fa9c"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.47.0/axm-darwin-x64"
      sha256 "b6cbd10622862816d9c6d025aed043b73e2aeb054f72edd520a7dad2f2af4e23"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.47.0/axm-linux-arm64"
      sha256 "191890e686f61e85be8438ea6ac671f33a19352147fe646a202b4963675924ff"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.47.0/axm-linux-x64"
      sha256 "c30a1bc7303fffc0329d1093deab745d5a70da3282ac56985d061985af8bfaad"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
