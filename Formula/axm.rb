# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.49.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.49.3/axm-darwin-arm64"
      sha256 "13691666a4f1c7f8707f436511121ce5d3c55fd9b44c7ffced7618a4b1b4a961"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.49.3/axm-darwin-x64"
      sha256 "1b8d358e1da9ff2026fcc4d9a926226a26da481aa88daedf13241c3d3c22ef1f"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.49.3/axm-linux-arm64"
      sha256 "66dc670eae0cf5161d14e3f82da60db0b7e3cb27de33fd17a15bb13de2130857"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.49.3/axm-linux-x64"
      sha256 "44b1f844991f03914ceb5ab250e2b924d70478fc304101dc981dfe48b0ff03bf"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
