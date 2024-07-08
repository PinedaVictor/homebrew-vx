class Vexal < Formula
    desc "AI CLI app built for assisting and automating developer workflow."
    homepage "https://www.vexal.io/"
    url "https://github.com/PinedaVictor/vexal/releases/download/v1.0.1/vx"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    license "BSD 3" 
  
    def install
      bin.install "vx"
    end
  
    test do
      assert_match "vx version", shell_output("#{bin}/vx --version")
    end
  end
  