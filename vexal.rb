class Vexal < Formula
    desc "AI CLI app built for assisting and automating developer workflow."
    homepage "https://www.vexal.io/"
    url "https://github.com/PinedaVictor/vexal/releases/download/v1.0.1/vx"
    sha256 "3a48595db6255be0da890f520a94e3b8db4c33cff0686e4b1f72b0ce127e2f90"
    license "BSD 3"  # Replace with your actual license
  
    def install
      bin.install "vx"
    end
  
    test do
      assert_match "vx version", shell_output("#{bin}/vx --version")
    end
  end
  