class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.12.1"
    license "Proprietary"
    
    SHA256_MACOS = "a59daa7ceb38a892a4d418666d011c31415d18c0f07023b2f0c29d35a0b235eb"
    SHA256_LINUX = "a1da023df439989f4f2799d7299eba73442f8d52768452e5135b644b3ce74440"

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