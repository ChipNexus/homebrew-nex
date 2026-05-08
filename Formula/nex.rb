class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.25.1"
    license "Proprietary"
    
    SHA256_MACOS = "2dbe19783a5aaa75b36dbe8c9cae6f845390e60d83def22233fb82145d153d8e"
    SHA256_LINUX = "8526ecb742acd954d25fd47ceb888dd72547557264be6fa591d585a892b84c85"

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