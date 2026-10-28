class Ymusic < Formula
  desc "Terminal client for Yandex Music"
  homepage "https://github.com/iodnoorov/ymusic"
  license all_of: ["MIT", "FDK-AAC"]

  on_macos do
    on_arm do
      url "https://github.com/iodnoorov/ymusic/releases/download/v3.6.1/ymusic-3.6.1-aarch64-macos.tar.gz"
      sha256 "c7be5a51fe39616fe1d086f78d85f192d8519ad342b75681f30a8676c974d043"
    end
    on_intel do
      url "https://github.com/iodnoorov/ymusic/releases/download/v3.6.1/ymusic-3.6.1-x86_64-macos.tar.gz"
      sha256 "8c72656f320ddb17df2a8e4eca15545ad2a01c6fafa8ea2781483d763a0f93b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iodnoorov/ymusic/releases/download/v3.6.1/ymusic-3.6.1-aarch64-linux.tar.gz"
      sha256 "7a389d7e56f31ebbe03666c26d2ae022e3b0629ba909998103e5d1190ac7a476"
    end
    on_intel do
      url "https://github.com/iodnoorov/ymusic/releases/download/v3.6.1/ymusic-3.6.1-x86_64-linux.tar.gz"
      sha256 "80f55a135f11949ee39c6daf83b81608c64d629fb4c003e60fd3dd54c9f86076"
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
