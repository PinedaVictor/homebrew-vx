class Vexal < Formula
    desc "AI CLI app built for assisting and automating developer workflow."
    homepage "https://www.vexal.io/"
    url "https://github.com/PinedaVictor/vexal/releases/download/v1.1.4/vx"
    sha256 "9bbc538f0745f0f9fe4891fddc00971aaf47a89c9c032fa0520947c294e5f476"
    license "BSD 3" 
  
    def install
      bin.install "vx"
    end
  
    test do
      assert_match "vx version", shell_output("#{bin}/vx --version")
    end
  end
  