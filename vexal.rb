class Vexal < Formula
    desc "AI CLI app built for assisting and automating developer workflow."
    homepage "https://www.vexal.io/"
    url "https://github.com/PinedaVictor/vexal/releases/download/v1.2.4/vx"
    sha256 "f6225c89e59d1a04a4db8803b82ff440ea7bd7fe19223ec491df01f5736eca89"
    license "BSD 3" 
  
    def installgst
      bin.install "vx"
    end
  
    test do
      assert_match "vx version", shell_output("#{bin}/vx --version")
    end
  end
  