class Big < Formula
  desc "Manage your big (itsjustbig.com) Instagram DM inbox and automations"
  homepage "https://itsjustbig.com"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v0.1.0/big-darwin-arm64.tar.gz"
      sha256 "e1bebc8540abbdb30453c94fc4ec2bab5d4645d4dbae464a0dbe58b62cd4adeb"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v0.1.0/big-darwin-x64.tar.gz"
      sha256 "8ac9cd6a729f041f2723d3dcb56c732e724a196dbb5a05f4ce5c3cabf273ff3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v0.1.0/big-linux-arm64.tar.gz"
      sha256 "fefa171cb525e7611f357f2d38bf5e053f4c1b012f65f093c3e7d5b5a95956dc"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v0.1.0/big-linux-x64.tar.gz"
      sha256 "e5276a53a769346c2a951250890841fd488634e6545ab14abe916910b146f67b"
    end
  end

  def install
    bin.install "big"
  end

  test do
    assert_match "big", shell_output("#{bin}/big --help")
  end
end
