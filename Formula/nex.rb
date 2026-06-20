class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.40.0"
    license "Proprietary"
    
    SHA256_MACOS = "630a30b46a719fd23e9fff7859564247b8da895233c17064badda72d7873308e"
    SHA256_LINUX = "4506bcfe0f81da0d3fd841e058723b3ce4140332bd2f97ec70765b4d1e677cd6"

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