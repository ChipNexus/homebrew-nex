class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.55.0"
    license "Proprietary"
    
    SHA256_MACOS = "fd4b5f12f1a8aac8b1ec010289f8bbffe9fbbb755cd91c08e10d3c677f739fba"
    SHA256_LINUX = "15fa993890671e51d668f134003167b28c95a766a5b5f02f4d30b68d51f678d8"

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