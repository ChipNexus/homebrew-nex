class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.51.0"
    license "Proprietary"
    
    SHA256_MACOS = "12a6a8ee0bda20e71fe75b55ea27cab07de4e43be9cc425129132c523f230bb7"
    SHA256_LINUX = "85dbfc5db8fbd1a77221c08435dd48d54f25d900f2d0ccb152ed486090e19ffe"

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