class Ymusic < Formula
  desc "Terminal client for Yandex Music"
  homepage "https://github.com/iodnoorov/ymusic"
  license all_of: ["MIT", "FDK-AAC"]

  on_macos do
    on_arm do
      url "https://github.com/iodnoorov/ymusic/releases/download/v3.6.2/ymusic-3.6.2-aarch64-macos.tar.gz"
      sha256 "88fafba68f8f46ba5a9701bc2bd0d3f316831a6d85c15e4143859eed238d7682"
    end
    on_intel do
      url "https://github.com/iodnoorov/ymusic/releases/download/v3.6.2/ymusic-3.6.2-x86_64-macos.tar.gz"
      sha256 "071099392a81db7b7e8678c5424272029c13c81e8624609ec867063969a54b9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iodnoorov/ymusic/releases/download/v3.6.2/ymusic-3.6.2-aarch64-linux.tar.gz"
      sha256 "7eadc99684cfc0d710a08f6e10da9978894521f2582a3719274cb4d94bf5a3d5"
    end
    on_intel do
      url "https://github.com/iodnoorov/ymusic/releases/download/v3.6.2/ymusic-3.6.2-x86_64-linux.tar.gz"
      sha256 "8a8d4924161fbaec2558ad070657f329bef1885cb9a15b9dffe3909327e291a3"
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
