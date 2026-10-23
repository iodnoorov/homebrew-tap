class Ymusic < Formula
  desc "Terminal client for Yandex Music"
  homepage "https://github.com/iodnoorov/ymusic"
  version "3.5.0"
  license all_of: ["MIT", "FDK-AAC"]

  on_macos do
    on_arm do
      url "https://github.com/iodnoorov/ymusic/releases/download/v#{version}/ymusic-#{version}-aarch64-macos.tar.gz"
      sha256 "a682cebed01c1747c26bb43172d8a0862bd2380882dccc4aa14d185f3f3d21d6"
    end
    on_intel do
      url "https://github.com/iodnoorov/ymusic/releases/download/v#{version}/ymusic-#{version}-x86_64-macos.tar.gz"
      sha256 "13c2e35af09e9628e99240ebcc1b4f2a82cf8e661259a4f08e7939f589b8c4cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iodnoorov/ymusic/releases/download/v#{version}/ymusic-#{version}-aarch64-linux.tar.gz"
      sha256 "534a28832afbf5400163d1a85f60ac85607b46a7401f26eba1bac5436e8e1969"
    end
    on_intel do
      url "https://github.com/iodnoorov/ymusic/releases/download/v#{version}/ymusic-#{version}-x86_64-linux.tar.gz"
      sha256 "feebc72fc31300a0d3fb1426946bd169f84b8cc04f3f818c3a1258be3fd1f187"
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
