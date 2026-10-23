class Vexal < Formula
  desc "Developer workflow CLI with dependency graph, AI tooling, and repo automation."
  homepage "https://www.vexal.io/"
  version "1.6.0"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.6.0/vexal_darwin_arm64.tar.gz"
      sha256 "3e4993044efa50a2d1bb7813a93dbd4120ecd2fbb706e228bedd1dd114e024c5"
    else
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.6.0/vexal_darwin_amd64.tar.gz"
      sha256 "fd416b5bcbedbe7e9e2c1cb5100984d4f074cf872dbea70fe660c0a0c673f5e1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.6.0/vexal_linux_amd64.tar.gz"
      sha256 "5d5beee107b4465723a2035e4e41c4161aaf49edf57c7be20eb9398d0bd1d908"
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
