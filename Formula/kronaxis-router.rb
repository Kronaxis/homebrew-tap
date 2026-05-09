# typed: false
# frozen_string_literal: true

# This file is auto generated. Edit at .goreleaser.yaml in
# Kronaxis/kronaxis-router and re-tag to regenerate.
class KronaxisRouter < Formula
  desc "Tier routing LLM proxy for sovereign + frontier models"
  homepage "https://github.com/Kronaxis/kronaxis-router"
  version "0.3.0"
  license "BUSL-1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Kronaxis/kronaxis-router/releases/download/v0.3.0/kronaxis-router_0.3.0_darwin_amd64.tar.gz"
      sha256 "9eeb5fb329979721f373ca12a210328ecf8ad45a870f8bdfb0479d81db8f3765"
      def install
        bin.install "kronaxis-router"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Kronaxis/kronaxis-router/releases/download/v0.3.0/kronaxis-router_0.3.0_darwin_arm64.tar.gz"
      sha256 "48222e80e4606d756b955d0fae19f53c5815b10a931a74246ec344ffb8514816"
      def install
        bin.install "kronaxis-router"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Kronaxis/kronaxis-router/releases/download/v0.3.0/kronaxis-router_0.3.0_linux_amd64.tar.gz"
      sha256 "e6db1ae3ed4bf43eb93468cc9492a8a470a112dc74a39da73d0901576533c0a4"
      def install
        bin.install "kronaxis-router"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Kronaxis/kronaxis-router/releases/download/v0.3.0/kronaxis-router_0.3.0_linux_arm64.tar.gz"
      sha256 "9d3b51d96d8782a0dbb6c5b21780aa3c49e74bd0a5ac016fc2b8839c077cce3e"
      def install
        bin.install "kronaxis-router"
      end
    end
  end

  test do
    system "#{bin}/kronaxis-router", "version"
  end
end
