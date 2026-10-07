# typed: false
# frozen_string_literal: true

class Axm < Formula
  desc "Open extension manager for AI coding agents"
  homepage "https://axm.sh"
  version "0.42.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.axm.sh/cli-v0.42.0/axm-darwin-arm64"
      sha256 "ab56d269676a32e2cf2b45977b5750f3f1d599e030a140929a33738fdf3f2d3c"

      def install
        bin.install "axm-darwin-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.42.0/axm-darwin-x64"
      sha256 "d81bf9c22ef2c25356f0e5f5948ca8f5410cdb9ecd42a4df41115d24690c15ea"

      def install
        bin.install "axm-darwin-x64" => "axm"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://releases.axm.sh/cli-v0.42.0/axm-linux-arm64"
      sha256 "cc0ed970feead6199e22d884f1aa1f0013aba7320a6f916720f95c23dc8e7a3d"

      def install
        bin.install "axm-linux-arm64" => "axm"
      end
    end

    on_intel do
      url "https://releases.axm.sh/cli-v0.42.0/axm-linux-x64"
      sha256 "8915d05cf2a8f92fccde3127f31ca5eda64793de5375800f66f3ae21c528fd1c"

      def install
        bin.install "axm-linux-x64" => "axm"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axm --version")
  end
end
