class Vexal < Formula
  desc "Developer workflow CLI with dependency graph, AI tooling, and repo automation."
  homepage "https://www.vexal.io/"
  version "1.5.5"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.5/vexal_darwin_arm64.tar.gz"
      sha256 "0f9bc4e3ed7428e7aa0e6cd3460d1dbf871023b9b1e64631c1cda1c4d9593c50"
    else
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.5/vexal_darwin_amd64.tar.gz"
      sha256 "3dfcc8d05d1537f288798387f8bb5883789bf1420038e658ae6da1e727cff899"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.5/vexal_linux_amd64.tar.gz"
      sha256 "8636eb1b1f2456631fab9b37ff8e52f0d62c9dce86f16ef9be32fa8c4ada3bb8"
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
