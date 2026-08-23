class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.67.0"
    license "Proprietary"
    
    SHA256_MACOS = "7cb28152b2093f4ab11a2f606135fd38afe4e40553b19754c421eafe82965c21"
    SHA256_LINUX = "d194c4cdebb41eb64c28653b9911c0a17d7f6451fd5981547af40681b8adc81c"

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