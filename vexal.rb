class Vexal < Formula
  desc "Developer workflow CLI with dependency graph, AI tooling, and repo automation."
  homepage "https://www.vexal.io/"
  version "1.5.8"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.8/vexal_darwin_arm64.tar.gz"
      sha256 "ee6015ba18004e6bd18f35264b0e1ca7bfa169bddc778b0e19d483f65139a230"
    else
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.8/vexal_darwin_amd64.tar.gz"
      sha256 "aba30786bc5b6b3c4e1f113037758a71546586d21acf3363f0e2734d7d5b1bc2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.8/vexal_linux_amd64.tar.gz"
      sha256 "3ddd25d31a070e8401994b7bd91a76ab97cf48544b68c17068971812e3ed1ee4"
    end
  end

  def install
    bin.install "vx"
  end

  def caveats
    <<~EOS
      _______________________________
      /                               \
      |   ___________________________   |
      |  |                           |  |
      |  |   C:\> vx -v              |  |
      |  |                           |  |
      |  |   VEXAL CLI INSTALLED!    |  |
      |  |                           |  |
      |  |   [ READY TO LAUNCH ]     |  |
      |  |___________________________|  |
      |                                 |
      \_______________________________/
             \_______________/

      Thank you for installing Vexal!

      Contact Information:
      - Docs: https://www.vexal.io/
      - GitHub: https://github.com/PinedaVictor/vexal
      - Email: pinedavictor095@gmail.com
    EOS
  end

  test do
    assert_match "vx version", shell_output("#{bin}/vx --version")
  end
end
