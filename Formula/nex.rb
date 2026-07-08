class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.48.4"
    license "Proprietary"
    
    SHA256_MACOS = "35c272eb30a8f7ab3b7721550a3e35af5cd85bb4e37a22e627ae429f0a386efc"
    SHA256_LINUX = "3926b2549bc5a09cf34ab3c71cd84f200b9eb6432db251808ae547d37371237d"

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