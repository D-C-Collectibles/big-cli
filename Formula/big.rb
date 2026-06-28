class Big < Formula
  desc "Manage your big (itsjustbig.com) Instagram DM inbox and automations"
  homepage "https://itsjustbig.com"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v0.2.1/big-darwin-arm64.tar.gz"
      sha256 "2694b04501ef548d729d9693a044d27d96991350151387c481129b90008ffd37"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v0.2.1/big-darwin-x64.tar.gz"
      sha256 "ce963ee74fb7e9524afd9a605615539d929913abb8dfdc9e2a59590f615225cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v0.2.1/big-linux-arm64.tar.gz"
      sha256 "43d8535bf3cbded9270b260a00d1c595394a7ca0b4e2a7c1bb1d1ed2b235ba54"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v0.2.1/big-linux-x64.tar.gz"
      sha256 "45770924751dae03a3590feb3796f404f686e6ccbeabe0333a7e887bb8182ea7"
    end
  end

  def install
    bin.install "big"
  end

  test do
    assert_match "big", shell_output("#{bin}/big --help")
  end
end
