class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.11.1"
    license "Proprietary"
    
    SHA256_MACOS = "4055787879b626a262334c8b3c56fa0651ba2df9df9f048e427787fb49008494"
    SHA256_LINUX = "0c3a3a91c2e217cd3ac43fb11f5a30c40a17a71768527dd7b6bcd53c74470967"

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