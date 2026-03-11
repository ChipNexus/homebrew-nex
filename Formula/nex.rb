class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.3.0"
    license "Proprietary"
    
    SHA256_MACOS = "b01a34b632be502d4d61122855d3b87a7d9549eaa95fbcadb1f2d76a4f7f1f1f"
    SHA256_LINUX = "96e354929c652c8ef31eceef16cbe2a55a0c4d26851889666ba5290df046862c"

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