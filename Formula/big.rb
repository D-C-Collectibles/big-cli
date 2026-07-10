class Big < Formula
  desc "Manage your big (itsjustbig.com) Instagram DM inbox and automations"
  homepage "https://itsjustbig.com"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v1.1.0/big-darwin-arm64.tar.gz"
      sha256 "081691a2d361299e9318fd46a2aa4e96e336c570e317f7ae047d1418cf7a8035"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v1.1.0/big-darwin-x64.tar.gz"
      sha256 "4833281a3694f1bf1797f00289159966f1e23162f573ae2a0c6c4cb1ae1eaa10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v1.1.0/big-linux-arm64.tar.gz"
      sha256 "17b7aff4c1a8fca133217b24a4b34e16035b33798a35cbdd0bda235a11eb47dd"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v1.1.0/big-linux-x64.tar.gz"
      sha256 "93a4d2533dae75d303d973ba26ed50758189047fe28184752085b0ecbc2d74ca"
    end
  end

  def install
    bin.install "big"
  end

  test do
    assert_match "big", shell_output("#{bin}/big --help")
  end
end
