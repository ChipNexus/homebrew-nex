class Nex < Formula
    desc "NEX CLI"
    homepage "https://chipnexus.ai/"
    version "5.61.1"
    license "Proprietary"
    
    SHA256_MACOS = "fbeb2e4305768ccd06f4ecf8e68b707c2b69ec660e2910db7915c128c486947a"
    SHA256_LINUX = "68910696ba2dedbeb65de4f48e755cd0d9b6b8d13ccc98bd901517d7544ff5d8"

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