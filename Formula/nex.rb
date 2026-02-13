class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "4.3.0"
    license "Proprietary"
    
    SHA256_MACOS = "3be1a107eb644018741fbb4f846ad1c8c9d99fb6a081de0a8abd4eab8ed8161b"
    SHA256_LINUX = "5cd1ae5d43cef8ef8f09676a331384697a9f51aa1107a5ee0b662f4aa88f6019"

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