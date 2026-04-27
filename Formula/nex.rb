class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.21.1"
    license "Proprietary"
    
    SHA256_MACOS = "326e640eadcd7d3faa7deec8904cf40b9f7074b4b9dd85c425ca0e25c80d14d0"
    SHA256_LINUX = "012f9ee299bb0674b3a0a18fd9ce43ac48075c7111e38917e348eda7ffb1b525"

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