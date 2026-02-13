class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "4.3.0"
    license "MIT"
    
    SHA256_MACOS = "<PASTE_SHA256_FOR_MACOS_ARM64_TGZ>"
    SHA256_LINUX = "<PASTE_SHA256_FOR_LINUX_AMD64_TGZ>"

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