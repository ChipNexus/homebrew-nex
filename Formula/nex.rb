class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.35.0"
    license "Proprietary"
    
    SHA256_MACOS = "6373a9030c8dbde7fec8bd8774ac40ff5e2dcfe3f8879ffa04282bfe41307fd0"
    SHA256_LINUX = "7594145e6785802e0aaf5f2fc063b02cc1ccd180fc27e53e95d8e323fbc0a9c3"

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