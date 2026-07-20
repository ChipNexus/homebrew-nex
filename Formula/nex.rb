class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.53.0"
    license "Proprietary"
    
    SHA256_MACOS = "b9dcf0d40668caf6bf904d63bbcee775c6c95864842ddbda1a058331710adada"
    SHA256_LINUX = "bb5ea47d9241bc8eb77fc3246283060e16fd833d671d6417b1426b150e066952"

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