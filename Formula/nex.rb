class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "4.4.0"
    license "Proprietary"
    
    SHA256_MACOS = "6d28f3cbdca23eb2d9ed82ec193e2f29b482c19b7d4b490dcb93f2ad99ba88ab"
    SHA256_LINUX = "e21a6e0b7ad3c379a86c32f0d3602aea4f9a58fa8b95b216b1509047ce14404d"

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