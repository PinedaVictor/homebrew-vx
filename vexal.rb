class Vexal < Formula
    desc "Developer workflow CLI with dependency graph, AI tooling, and repo automation."
    homepage "https://www.vexal.io/"
    url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.0/vx"
    sha256 "77660afa3d3baf8ccf6d1e70f68f14c98a0e63ccadfd2636a02e4de5bb532bb0"
    license "BSD-3-Clause"
  
    def install
      bin.install "vx"
    end

    def caveats
      <<~EOS
        #{ascii_art}
        
        Thank you for installing Vexal!
  
        Contact Information:
        - Docs: https://www.vexal.io/
        - GitHub: https://github.com/PinedaVictor/vexal
        - Email: pinedavictor095@gmail.com

      EOS
    end

    private 

    def ascii_art
      <<~ART
               _______________________________
              /                               \\
             |   ___________________________   |
             |  |                           |  |
             |  |   C:\\> vx -v              |  |
             |  |                           |  |
             |  |   VEXAL CLI INSTALLED!    |  |
             |  |                           |  |
             |  |   [ READY TO LAUNCH ]     |  |
             |  |___________________________|  |
             |                                 |
              \\_______________________________/
                     \\_______________/
      ART
    end
  
    test do
      assert_match "vx version", shell_output("#{bin}/vx --version")
    end
  end
  