# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.50.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.50.0/axm-darwin-arm64"
      sha256 "5a57c7998ed5c85a3c32b52179f9448cf1319df49c73ab910e21d04b56638b9b"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.50.0/axm-darwin-x64"
      sha256 "8983f2c7d21bbe166858a163962a1e5b034dc56839d7e51dc76a4755f2678d75"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.50.0/axm-linux-arm64"
      sha256 "7dabfe903dc15362239c441fbecf9820f4a1634f801345392c22047d31131017"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.50.0/axm-linux-x64"
      sha256 "e22cdec2d7a4615d7cf04857a05d6bd5f6821575d32e8f9fae8538586efefe12"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
