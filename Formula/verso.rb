class Verso < Formula
  desc "Terminal EPUB reader with vim navigation and Markdown highlight export"
  homepage "https://github.com/romankhadka/verso"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/romankhadka/verso/releases/download/v0.1.0/verso-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "4fea4893f2c3e1b750f00304fe2a6fba0a1491973605eae30a90fca9b1f269bc"
    end
    on_intel do
      url "https://github.com/romankhadka/verso/releases/download/v0.1.0/verso-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "d6b693d59e0475d9a328b330824d0b18905f556968c1638a8a60eea1b5fe36f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/romankhadka/verso/releases/download/v0.1.0/verso-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3c7ec8b3cc6983c46efecdbf6eb10a0ce50f41f262ea100ba93719b43f680daf"
    end
    on_intel do
      url "https://github.com/romankhadka/verso/releases/download/v0.1.0/verso-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "717ed19085463461424cd07c1c8d9047baf3e603cf6d4cefbcd9474ac331be03"
    end
  end

  def install
    bin.install "verso"
  end

  test do
    assert_match "verso", shell_output("#{bin}/verso --help")
  end
end
