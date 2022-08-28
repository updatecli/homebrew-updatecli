# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Updatecli < Formula
  desc "Continuously update everything."
  homepage "https://updatecli.io/"
  version "0.32.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/updatecli/updatecli/releases/download/v0.32.0/updatecli_Darwin_arm64.tar.gz"
      sha256 "aa8e0d51f790437b9bcc7c0775e0c9ffba6ed9b56ae8e3afa159c987c5fca306"

      def install
        bin.install "updatecli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/updatecli/updatecli/releases/download/v0.32.0/updatecli_Darwin_x86_64.tar.gz"
      sha256 "76e429f8d2194dd7367381cd6f009e7414d70bc4280be0f0aa6a0e4843ac0a43"

      def install
        bin.install "updatecli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/updatecli/updatecli/releases/download/v0.32.0/updatecli_Linux_x86_64.tar.gz"
      sha256 "50c603222a6480c37c0181ba0965d140cd5456419b0d10771577857974a52c37"

      def install
        bin.install "updatecli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.32.0/updatecli_Linux_arm64.tar.gz"
      sha256 "317843c002711718385fd9ec2fb919e32e734a069da8e752f086b53e86a79524"

      def install
        bin.install "updatecli"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.32.0/updatecli_Linux_armv6.tar.gz"
      sha256 "f4f5328da74a9858e11a4a9b87d43bee91aba05f0e6584fd00a936c7fa749dac"

      def install
        bin.install "updatecli"
      end
    end
  end

  test do
    system "#{bin}/updatecli version"
  end
end
