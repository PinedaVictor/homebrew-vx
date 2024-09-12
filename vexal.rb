class Vexal < Formula
    desc "AI CLI app built for assisting and automating developer workflow."
    homepage "https://www.vexal.io/"
    url "https://github.com/PinedaVictor/vexal/releases/download/v1.2.5/vx.tar.gz"
    sha256 "4a4921dcffda74849a086fb71606e9d452cafec0f2bd9d47547c840d35596f65"
    license "BSD 3" 
  
    def install
      bin.install "vx"
    end
  
    test do
      assert_match "vx version", shell_output("#{bin}/vx --version")
    end
  end
  