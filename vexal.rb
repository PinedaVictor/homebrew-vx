class Vexal < Formula
    desc "AI CLI app built for assisting and automating developer workflow."
    homepage "https://www.vexal.io/"
    url "https://github.com/PinedaVictor/vexal/releases/download/v1.2.4/vx"
    sha256 "5ffbe2acdf05c17ea74b74400d3fdd5da3212e20004a88c4e7998f72e4129dff"
    license "BSD 3" 
  
    def installgst
      bin.install "vx"
    end
  
    test do
      assert_match "vx version", shell_output("#{bin}/vx --version")
    end
  end
  