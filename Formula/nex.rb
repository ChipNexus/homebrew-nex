class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.26.1"
    license "Proprietary"
    
    SHA256_MACOS = "b25db2e0529a30a9b2066f8217898f1ee4cae4ceccf049eb37219f27c3e6be70"
    SHA256_LINUX = "b07df2f62803eac7eaffa4f4a1c1e8a5556dd605380062b1cd2083a9cc36f112"

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