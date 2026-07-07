class Big < Formula
  desc "Manage your big (itsjustbig.com) Instagram DM inbox and automations"
  homepage "https://itsjustbig.com"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v1.0.0/big-darwin-arm64.tar.gz"
      sha256 "c46c1956f9a5efaca35cfbc28c62e45ebe4e5924c2ee45a2766f7b6513fe49c1"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v1.0.0/big-darwin-x64.tar.gz"
      sha256 "3065da57c13d541be98b42ff6ef4bbd30d37dcf2e0a90e14b857f28ea56c133b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v1.0.0/big-linux-arm64.tar.gz"
      sha256 "01ad25674e55200ed6c317cfc70087121b02a509ba39e0364b729af3eecd240d"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v1.0.0/big-linux-x64.tar.gz"
      sha256 "3644ff25dd60c93e37af977831071a3925f2efadba48dd147332b50cce1ef90b"
    end
  end

  def install
    bin.install "big"
  end

  test do
    assert_match "big", shell_output("#{bin}/big --help")
  end
end
