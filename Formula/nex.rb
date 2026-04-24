class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.21.0"
    license "Proprietary"
    
    SHA256_MACOS = "84d54b6bde2b28b3e0a6e9f200eabd518da7520867739eeb604f9b7421561aa1"
    SHA256_LINUX = "54564d0defc4bc72e37419a2466a24d7186357893cc4b66e30f23063fcc34531"

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