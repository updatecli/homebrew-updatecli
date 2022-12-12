# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Updatecli < Formula
  desc "Continuously update everything."
  homepage "https://updatecli.io/"
  version "0.40.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/updatecli/updatecli/releases/download/v0.40.0/updatecli_Darwin_x86_64.tar.gz"
      sha256 "7162f344eb5d6a84cf34bbb7e876aa107f2db6340d449a523441219a15dd89ef"

      def install
        bin.install "updatecli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/updatecli/updatecli/releases/download/v0.40.0/updatecli_Darwin_arm64.tar.gz"
      sha256 "2bb1ed4698f15dd7497a8357a5617981994993a32d2bfca39da6e06865d20b11"

      def install
        bin.install "updatecli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.40.0/updatecli_Linux_armv6.tar.gz"
      sha256 "1279093c8dbce3ce64fac9130191b9fb5f5b38b8714618bfee38caee7ded8562"

      def install
        bin.install "updatecli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.40.0/updatecli_Linux_arm64.tar.gz"
      sha256 "e84a9e0035b4e1fb0835b4f0046ee3f5f585fca1f1bc2da4afc209da9dd2c32a"

      def install
        bin.install "updatecli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/updatecli/updatecli/releases/download/v0.40.0/updatecli_Linux_x86_64.tar.gz"
      sha256 "fe05e2b3fc009363ece376c2bed1c2cc80175748a39ad255f74ebaaaa361cb19"

      def install
        bin.install "updatecli"
      end
    end
  end

  test do
    system "#{bin}/updatecli version"
  end
end
