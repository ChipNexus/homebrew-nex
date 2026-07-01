class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.45.1"
    license "Proprietary"
    
    SHA256_MACOS = "109e41df20de524b43f52bcfbf7f3c7711c616247420f16b09ecc538803f82d0"
    SHA256_LINUX = "b316e769bb2f302b0a56d9859d0066bf44f305b888a00af9e4c3c3dbb910d60c"

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