# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.45.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.45.0/axm-darwin-arm64"
      sha256 "17a5cd47d524525a3f79fd8880a4a69e12ae7307e99631bb4999f7ebef1de9ae"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.45.0/axm-darwin-x64"
      sha256 "29f7204fc75003d7b301bec018e58dab6c568c8d0b9f4805fe2715184dfb863e"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.45.0/axm-linux-arm64"
      sha256 "82327147db9697a5f52292069db63ce6266f9a0e3f16197529cc27d6276de13e"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.45.0/axm-linux-x64"
      sha256 "e62472fa1d0bd746a215a76739c9b6936fcfdbffe6994ac3954a8d105cef6204"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
