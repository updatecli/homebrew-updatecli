# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Updatecli < Formula
  desc "Continuously update everything."
  homepage "https://updatecli.io/"
  version "0.33.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/updatecli/updatecli/releases/download/v0.33.3/updatecli_Darwin_x86_64.tar.gz"
      sha256 "2a9b44eb5115eb6311f727be37140dd16fb11b3c2e0ff0b124cd0ca077bb58a5"

      def install
        bin.install "updatecli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/updatecli/updatecli/releases/download/v0.33.3/updatecli_Darwin_arm64.tar.gz"
      sha256 "22cc8c9c46757758527323fa0cc5c164370e491c9ec47e0f0355d7a1ee974039"

      def install
        bin.install "updatecli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.33.3/updatecli_Linux_armv6.tar.gz"
      sha256 "99ed1fb10923a8ac8e4970d511fb2e8223b021f8ff553284998c0273a298695f"

      def install
        bin.install "updatecli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.33.3/updatecli_Linux_arm64.tar.gz"
      sha256 "f951793f8b1cc8b275fb49985d7461b04474e39814e43c7c83f643dcd510518d"

      def install
        bin.install "updatecli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/updatecli/updatecli/releases/download/v0.33.3/updatecli_Linux_x86_64.tar.gz"
      sha256 "9c61164e4ec525e5190aba1cdbabb579c944e419d61a0fa2a8e0389e01999041"

      def install
        bin.install "updatecli"
      end
    end
  end

  test do
    system "#{bin}/updatecli version"
  end
end
