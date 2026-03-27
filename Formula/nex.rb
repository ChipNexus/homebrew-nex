class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.11.0"
    license "Proprietary"
    
    SHA256_MACOS = "c03e1b195d310f08220f2600dba4fd3f6cc84b7ca8c3be35ce2bcc515e1c6239"
    SHA256_LINUX = "3c8f1538a096de2202ff5cf79772f6785b9c9437ef0dd0ccea7101b55a1aa694"

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