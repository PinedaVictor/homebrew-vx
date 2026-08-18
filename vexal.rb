class Vexal < Formula
  desc "Developer workflow CLI with dependency graph, AI tooling, and repo automation."
  homepage "https://www.vexal.io/"
  version "1.5.9"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.9/vexal_darwin_arm64.tar.gz"
      sha256 "3aea3eff1f6f0934b6a1a271097ffc3157c0a4f51e57ffe7a1881a41a1418dba"
    else
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.9/vexal_darwin_amd64.tar.gz"
      sha256 "a8aea6fbffe0d905f87b93ddfeddef9c60b7e7aa033bee6bd625e6ac256b1bc4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.9/vexal_linux_amd64.tar.gz"
      sha256 "369b4948a2fafceb9fa2eaa0d08f38bef89d77ceebf2bd68da8ec912733a4310"
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
