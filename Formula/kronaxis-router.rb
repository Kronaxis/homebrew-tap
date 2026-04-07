class KronaxisRouter < Formula
  desc "Intelligent LLM proxy with cost-optimised routing"
  homepage "https://github.com/Kronaxis/kronaxis-router"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Kronaxis/kronaxis-router/releases/download/v1.1.0/kronaxis-router_1.1.0_darwin_arm64.tar.gz"
      sha256 "4bf3a8b5a21fdce82f691026ae293ed9d8378b7b67166afee602105b695652dc"
    end
    on_intel do
      url "https://github.com/Kronaxis/kronaxis-router/releases/download/v1.1.0/kronaxis-router_1.1.0_darwin_amd64.tar.gz"
      sha256 "a4dbae0acdda89748ca50caf96f34e48c3d4b2bc7adc15188ade6635020deed4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kronaxis/kronaxis-router/releases/download/v1.1.0/kronaxis-router_1.1.0_linux_arm64.tar.gz"
      sha256 "c71aa92b19503e54589ce083fa5bc4ef34632b610fb5d9c35bdd0496792ce50a"
    end
    on_intel do
      url "https://github.com/Kronaxis/kronaxis-router/releases/download/v1.1.0/kronaxis-router_1.1.0_linux_amd64.tar.gz"
      sha256 "f90b2038aa1e675fe9ca42f9f98f0b8249d621ae17647654d2db28db4a336e4d"
    end
  end

  def install
    bin.install "kronaxis-router"
  end

  test do
    assert_match "kronaxis-router v", shell_output("#{bin}/kronaxis-router version")
  end
end
