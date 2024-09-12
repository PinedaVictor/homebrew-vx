class Vexal < Formula
    desc "AI CLI app built for assisting and automating developer workflow."
    homepage "https://www.vexal.io/"
    url "https://github.com/PinedaVictor/vexal/releases/download/v1.2.4/vx.tar.gz"
    sha256 "e910e3986e5e3b2a4656b03cab355319033440a1e3e6baadbbc8515d142f2454"
    license "BSD 3" 
  
    def installgst
      bin.install "vx"
    end
  
    test do
      assert_match "vx version", shell_output("#{bin}/vx --version")
    end
  end
  