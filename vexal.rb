class Vexal < Formula
  desc "Developer workflow CLI with dependency graph, AI tooling, and repo automation."
  homepage "https://www.vexal.io/"
  version "1.5.6"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.6/vexal_darwin_arm64.tar.gz"
      sha256 "c534fe2e2ef5e235b1fc9712adafbcd1136e2cb856d79b0c47d65ac6b991a3ae"
    else
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.6/vexal_darwin_amd64.tar.gz"
      sha256 "746f56a271a6af8b05464f9b10d5bce8ac6132531af36fb6b89a513dbdfd6a60"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.6/vexal_linux_amd64.tar.gz"
      sha256 "bf73b965d44b9ee3743402c39fa392a687b0d2c59d4d6d300462f574425e8b5a"
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
