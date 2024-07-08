class Vexal < Formula
    desc "AI CLI app built for assisting and automating developer workflow."
    homepage "https://www.vexal.io/"
    url "https://github.com/PinedaVictor/vexal/releases/download/v1.0.2/vx"
    sha256 "935b91a47e865ae280c36c0e6dba9cda3ad62c60081b8de3c0dfe4c56f14004f"
    license "BSD 3" 
  
    def install
      bin.install "vx"
    end
  
    test do
      assert_match "vx version", shell_output("#{bin}/vx --version")
    end
  end
  