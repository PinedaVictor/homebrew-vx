class Vexal < Formula
    desc "AI CLI app built for assisting and automating developer workflow."
    homepage "https://www.vexal.io/"
    url "https://github.com/PinedaVictor/vexal/releases/download/v1.2.5/vx.tar.gz"
    sha256 "3196848bcec26716f4e90cbe18515954ed0b7e09b8a9ac896779582239bee3a3"
    license "BSD 3" 
  
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
  