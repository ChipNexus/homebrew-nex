class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.72.0"
    license "Proprietary"
    
    SHA256_MACOS = "d25f738aad5faff83f400ca6c9a2eecda0cfac3e12211817a38e2d971b22ac9d"
    SHA256_LINUX = "2fb3f239939f79a8ed3622953c3c5a69efd33fe288d871d5429d20e758860b97"

    on_macos do
        on_arm do
            url "https://github.com/ChipNexus/homebrew-nex/releases/download/v#{version}/nex_v#{version}_macos_arm64.tar.gz"
            sha256 SHA256_MACOS
        end
    end
    on_linux do
        on_intel do
            url "https://github.com/ChipNexus/homebrew-nex/releases/download/v#{version}/nex_v#{version}_linux_amd64.tar.gz"
            sha256 SHA256_LINUX
        end
    end

    def install
        bin.install "nex"
    end
    
    test do
        system "#{bin}/nex", "--version"
    end
end