class Ymusic < Formula
  desc "Terminal client for Yandex Music"
  homepage "https://github.com/iodnoorov/ymusic"
  license all_of: ["MIT", "FDK-AAC"]

  on_macos do
    on_arm do
      url "https://github.com/iodnoorov/ymusic/releases/download/v3.6.3/ymusic-3.6.3-aarch64-macos.tar.gz"
      sha256 "c5118899a7be4238a6c9fbd57f989d689289cd49691fdc05bf8db75c7472fb31"
    end
    on_intel do
      url "https://github.com/iodnoorov/ymusic/releases/download/v3.6.3/ymusic-3.6.3-x86_64-macos.tar.gz"
      sha256 "ae71b32ba4c3ddb15b2aebe01727428ff886ae08a0e04f45f9f3b3fdfb8fb9c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iodnoorov/ymusic/releases/download/v3.6.3/ymusic-3.6.3-aarch64-linux.tar.gz"
      sha256 "0e7fe266375d7bdd285c11582b2b007a6548e5cc95f801ab2cf6145cc2ce5d24"
    end
    on_intel do
      url "https://github.com/iodnoorov/ymusic/releases/download/v3.6.3/ymusic-3.6.3-x86_64-linux.tar.gz"
      sha256 "88a4be097533c8562a571e39fcc35adc34beab012407869372edba2810ebe229"
    end
  end

  def install
    bin.install "ymusic"
    doc.install "README.md"
    prefix.install "LICENSE", "LICENSE-FDK-AAC"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ymusic --version")
  end
end
