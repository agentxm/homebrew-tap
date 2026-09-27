# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.36.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.36.0/axm-darwin-arm64"
      sha256 "c826aa74a5d5d8db4618d32678dd82f37079295ac5583e2ec0d0db005e4d7c58"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.36.0/axm-darwin-x64"
      sha256 "923f8a4febc6e90f70aa6bac31925994958e1952d2dcea82bb0765a5fd5820cd"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.36.0/axm-linux-arm64"
      sha256 "1f48980268689b72ed98d9096576adbe5b964ed90472946e4b1815b0273144fe"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://github.com/agentxm/axm/releases/download/cli-v0.36.0/axm-linux-x64"
      sha256 "23e91ea59416a2cc3483995ab7d2fc163927851ccad4726fdb7340a6781b0f49"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
