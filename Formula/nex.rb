class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.43.0"
    license "Proprietary"
    
    SHA256_MACOS = "1c3a4801540046622d2c13e3a716ef3e0c550698bebf3db18b81caee3d2d68e0"
    SHA256_LINUX = "f28746a4c1cb71e90d6d2e013061a66c5f41be76d4cb966414533fbb51c877cd"

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