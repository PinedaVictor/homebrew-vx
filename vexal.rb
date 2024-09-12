class Vexal < Formula
    desc "AI CLI app built for assisting and automating developer workflow."
    homepage "https://www.vexal.io/"
    url "https://github.com/PinedaVictor/vexal/releases/download/v1.2.4/vx"
    sha256 "4933890c83196b0d8f28fde59750aadb09ab9b46ee4c16fa79da9a5a71ec4dca"
    license "BSD 3" 
  
    def installgst
      bin.install "vx"
    end
  
    test do
      assert_match "vx version", shell_output("#{bin}/vx --version")
    end
  end
  