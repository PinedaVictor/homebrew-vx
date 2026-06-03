class Vexal < Formula
  desc "Developer workflow CLI with dependency graph, AI tooling, and repo automation."
  homepage "https://www.vexal.io/"
  version "1.5.7"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.7/vexal_darwin_arm64.tar.gz"
      sha256 "5fb3af4a6fe846154b4fee927b6cf5ab95d7df4758c178911f3379d6723eb913"
    else
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.7/vexal_darwin_amd64.tar.gz"
      sha256 "f3d616902f8b6dc3410a4895487202e1eeaeb2f46e074439a8c4d39e54b036cc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.7/vexal_linux_amd64.tar.gz"
      sha256 "876fdc930338f39e3c9638be4028161eb7b6f8825774568991d1bde25f17cc07"
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
