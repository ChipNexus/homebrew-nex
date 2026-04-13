class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.16.1"
    license "Proprietary"
    
    SHA256_MACOS = "009424a9e573bf9d0f6e40d1de36ec1e7bbd65b9b89b6055e4713465e38beaac"
    SHA256_LINUX = "d7d794d394c85e282d41aa3cf54fa2dd189a46dccc2cb970337670dd398e7925"

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