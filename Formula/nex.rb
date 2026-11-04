class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.85.0"
    license "Proprietary"
    
    SHA256_MACOS = "2de1471be8aac8ed78942fad359361f58e4d6f2d4a0ec6e9371474307d851dfb"
    SHA256_LINUX = "4cc29e9f6cf5fb5d1f3cf14ef9dadb9aa5a37b8aa8d44e12de8e30dd5aa81472"

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