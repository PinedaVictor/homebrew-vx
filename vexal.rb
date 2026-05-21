class Vexal < Formula
  desc "Developer workflow CLI with dependency graph, AI tooling, and repo automation."
  homepage "https://www.vexal.io/"
  version "1.5.6"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.6/vexal_darwin_arm64.tar.gz"
      sha256 "5276279bbf96a7a8d52e66719ba185d4e7b6cea6cea36358c5885430ee194c43"
    else
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.6/vexal_darwin_amd64.tar.gz"
      sha256 "2fcb4888ec347f0ec83769c1a21251de86d3fd634902d26d23467c38230e6b12"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.6/vexal_linux_amd64.tar.gz"
      sha256 "93f17de729e53be5f9c63ddfe6e59faac7ad32141b0b140bd7d421fb3c9eaf0e"
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
