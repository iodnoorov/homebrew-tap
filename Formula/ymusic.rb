class Ymusic < Formula
  desc "Terminal client for Yandex Music"
  homepage "https://github.com/iodnoorov/ymusic"
  license all_of: ["MIT", "FDK-AAC"]

  on_macos do
    on_arm do
      url "https://github.com/iodnoorov/ymusic/releases/download/v3.5.1/ymusic-3.5.1-aarch64-macos.tar.gz"
      sha256 "7c07766182ee96f3a7d5c0244fd33e2cffc7270bf5090d94feb2b44e4a4d4935"
    end
    on_intel do
      url "https://github.com/iodnoorov/ymusic/releases/download/v3.5.1/ymusic-3.5.1-x86_64-macos.tar.gz"
      sha256 "b2e30406c06f36b7fc85d957f9475d72b2e6c68733941c158e6ebbe3c9b07c32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iodnoorov/ymusic/releases/download/v3.5.1/ymusic-3.5.1-aarch64-linux.tar.gz"
      sha256 "52e22525f4fae8f6f693c0a9ece077d9bad0b60ded4787378fa09b1fa375f9d2"
    end
    on_intel do
      url "https://github.com/iodnoorov/ymusic/releases/download/v3.5.1/ymusic-3.5.1-x86_64-linux.tar.gz"
      sha256 "a30c874bb133be5f4ba597804dc388ead5a886b682ec87cb9c8c2d8989fbcd78"
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
