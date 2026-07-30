class Yakka < Formula
  desc "Terminal multiplexer for running Claude Code and Codex side by side"
  homepage "https://github.com/romankhadka/yakka"
  license "MIT"

  on_macos do
    # One Mach-O universal binary serves both architectures, so Apple Silicon
    # and Intel intentionally point at the same archive.
    on_arm do
      url "https://github.com/romankhadka/yakka/releases/download/v0.2.0/yakka-macos-universal.tar.gz"
      sha256 "08449a4d5cb2ee05c46f5bd02a61221f4e525b71aa17c7258663ae75b3927d70"
    end
    on_intel do
      url "https://github.com/romankhadka/yakka/releases/download/v0.2.0/yakka-macos-universal.tar.gz"
      sha256 "08449a4d5cb2ee05c46f5bd02a61221f4e525b71aa17c7258663ae75b3927d70"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/romankhadka/yakka/releases/download/v0.2.0/yakka-linux-x86_64.tar.gz"
      sha256 "8c167b6be8d29769b78e3c4b39926cfdbb5b84d6052193949dec12292a25eb5b"
    end
  end

  def install
    bin.install "yakka"
  end

  test do
    assert_match "yakka #{version}", shell_output("#{bin}/yakka --version")
  end
end
