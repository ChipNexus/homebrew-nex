class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.42.1"
    license "Proprietary"
    
    SHA256_MACOS = "33af0a5dabc0fd59cc47514a1b48f32c161c39bd68aa4e59f9b21e822bace667"
    SHA256_LINUX = "03ed2b4325e63630d8ccb075e5b06b7225d8a7f8ffecf5c22c300d73cc472bc4"

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