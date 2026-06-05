class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.34.3"
    license "Proprietary"
    
    SHA256_MACOS = "8ca42eb23a64e87584306bb0c4cd2c627d08c3155d11175003aded713108d6a4"
    SHA256_LINUX = "3c46514c80bd5de9a0fe66bd95779dcaf408f3c166bc60a31cc2f7eb1f8f25ea"

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