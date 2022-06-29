# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Updatecli < Formula
  desc "Continuously update everything."
  homepage "https://updatecli.io/"
  version "0.27.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/updatecli/updatecli/releases/download/v0.27.0/updatecli_Darwin_x86_64.tar.gz"
      sha256 "4d216ad6c5d30f4e42268bbc108f0bdea51738c0435a527301ce4ec1933f779f"

      def install
        bin.install "updatecli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/updatecli/updatecli/releases/download/v0.27.0/updatecli_Darwin_arm64.tar.gz"
      sha256 "e7da9183b99b19d4fe26417b5dfa56158662ad88b300ca1e9f31aafea2237978"

      def install
        bin.install "updatecli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.27.0/updatecli_Linux_armv6.tar.gz"
      sha256 "a0a277b4122ba81c397ba6a48fa118181a98df564fa63e0f488b212d44f020e8"

      def install
        bin.install "updatecli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/updatecli/updatecli/releases/download/v0.27.0/updatecli_Linux_x86_64.tar.gz"
      sha256 "e87b1842a808f24a3ec6019fc415c7302749e1a17096c65095d2e832c0c97032"

      def install
        bin.install "updatecli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.27.0/updatecli_Linux_arm64.tar.gz"
      sha256 "2dc38394ae596d12e00527e98b943fa7fd099078f6d444e9f964da235adf337e"

      def install
        bin.install "updatecli"
      end
    end
  end

  test do
    system "#{bin}/updatecli version"
  end
end
