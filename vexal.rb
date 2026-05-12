class Vexal < Formula
  desc "Developer workflow CLI with dependency graph, AI tooling, and repo automation."
  homepage "https://www.vexal.io/"
  version "1.5.3"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.3/vexal_darwin_arm64.tar.gz"
      sha256 "665d6410701a36b32005f2f49d5f1b2e4e9a77c20a2bb0a9652e75cf32116c63"
    else
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.3/vexal_darwin_amd64.tar.gz"
      sha256 "c7c1d783f13b0d3fec97f713f59275b0840020853d420349912fffce4374b319"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.3/vexal_linux_amd64.tar.gz"
      sha256 "58be78d243e253b056b476c5fc1a123efe9043c94aefc60850231e30aed98b3c"
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
