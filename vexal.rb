class Vexal < Formula
  desc "Developer workflow CLI with dependency graph, AI tooling, and repo automation."
  homepage "https://www.vexal.io/"
  version "1.5.4"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.4/vexal_darwin_arm64.tar.gz"
      sha256 "d95e0984dbbd93e7f0aa4dd4357ab7dd8fa192e2ad449a6bda1b91b576f2173a"
    else
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.4/vexal_darwin_amd64.tar.gz"
      sha256 "3150233e01ce9fd932ec69dc3602c9a933816a7e4435c7858e7ed3f21b53e838"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.4/vexal_linux_amd64.tar.gz"
      sha256 "3abf3d85bb4abecd1aa63578210528a2dbccd5dc3c1cf94c057dd998ae1c336d"
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
