class Vexal < Formula
    desc "AI CLI app built for assisting and automating developer workflow."
    homepage "https://www.vexal.io/"
    url "https://github.com/PinedaVictor/vexal/releases/download/v1.0.3/vx"
    sha256 "114d1eab915cfa65785f219afc3067142e26d4cb70549185c5298f0ec6ddd1e8"
    license "BSD 3" 
  
    def install
      bin.install "vx"
    end
  
    test do
      assert_match "vx version", shell_output("#{bin}/vx --version")
    end
  end
  