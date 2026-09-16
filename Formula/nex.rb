class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.74.0"
    license "Proprietary"
    
    SHA256_MACOS = "c86742e93b08e8ffc5e4d16d0b8b8a400493c5683f2e8747abf86a1bb22bf3ac"
    SHA256_LINUX = "754cb506f434be87cc704a11dda3b950ea74d62a5e093022b3867b08f08b3fed"

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