class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.14.0"
    license "Proprietary"
    
    SHA256_MACOS = "9f070eef51288a78d6231fab368813249399b5809e2dbf255daad1198a108e13"
    SHA256_LINUX = "8e94af9ce8b5e24d45e24c49d154777b0b95bd4ab8670b4c0afdbf7a3403ac5c"

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