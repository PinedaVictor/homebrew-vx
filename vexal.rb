class Vexal < Formula
  desc "Developer workflow CLI with dependency graph, AI tooling, and repo automation."
  homepage "https://www.vexal.io/"
  version "1.5.6"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.6/vexal_darwin_arm64.tar.gz"
      sha256 "40d7fda779c9ce99d6da1b5a2edfefc7b71fd0619bbc926c672a30ab30e4b581"
    else
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.6/vexal_darwin_amd64.tar.gz"
      sha256 "8df5390823051564d52a780aea28447a70ebb935d94c191c25ff7384f33f127c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PinedaVictor/vexal/releases/download/v1.5.6/vexal_linux_amd64.tar.gz"
      sha256 "1c7e8fd7bde67f32a2928b538af917bc4f327d6609d80d91e48d1fef16688c43"
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
