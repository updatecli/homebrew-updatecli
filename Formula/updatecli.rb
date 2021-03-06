# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Updatecli < Formula
  desc "Continuously update everything."
  homepage "https://updatecli.io/"
  version "0.29.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/updatecli/updatecli/releases/download/v0.29.0/updatecli_Darwin_arm64.tar.gz"
      sha256 "b3aeb3d5b4cd28c2f44fbf1357d130a67647e2b6c96e945ffc92a35fd0541337"

      def install
        bin.install "updatecli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/updatecli/updatecli/releases/download/v0.29.0/updatecli_Darwin_x86_64.tar.gz"
      sha256 "144159df9ea5ef3d0b816ec67b944dfdea734441c5c76cafc69a27a42113671b"

      def install
        bin.install "updatecli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.29.0/updatecli_Linux_arm64.tar.gz"
      sha256 "11d70602cdc691d9fef75623c3a080095ff867824afa29022fa6ca3d85e476a2"

      def install
        bin.install "updatecli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/updatecli/updatecli/releases/download/v0.29.0/updatecli_Linux_x86_64.tar.gz"
      sha256 "161b930840fdf70fe4821cc8b1a60b1bda3727ba98ec0a4d9ac585681411d374"

      def install
        bin.install "updatecli"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.29.0/updatecli_Linux_armv6.tar.gz"
      sha256 "4ade407f7ad875d4cfffec9fc13a4bad057b15432aaf69e30361b85881b364d0"

      def install
        bin.install "updatecli"
      end
    end
  end

  test do
    system "#{bin}/updatecli version"
  end
end
