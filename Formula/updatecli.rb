# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Updatecli < Formula
  desc "Updatecli is a declarative dependency management command line tool."
  homepage "https://updatecli.io/"
  version "0.45.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/updatecli/updatecli/releases/download/v0.45.0/updatecli_Darwin_arm64.tar.gz"
      sha256 "475bb2f35e1d01598bf5cbb02789c9489b87ccd33f4dee09a031f7f1b9baa33e"

      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/updatecli/updatecli/releases/download/v0.45.0/updatecli_Darwin_x86_64.tar.gz"
      sha256 "7e8ce70ed49fa96d21f3e85ef4488d8531833562bdd87c0c970c5a6c3a4a7f20"

      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/updatecli/updatecli/releases/download/v0.45.0/updatecli_Linux_x86_64.tar.gz"
      sha256 "fabaafca7a7b7ede9901b59cd78308b2d9a369376c62a76cbb406b21bf45f0dd"

      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.45.0/updatecli_Linux_arm64.tar.gz"
      sha256 "d7ea6c21bc81c38048851f90679892025ea4f8ddad7016ef36574b8073f30002"

      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.45.0/updatecli_Linux_armv6.tar.gz"
      sha256 "406ba71bb01f5486245dd4ce39ac66931d11c2347385b8d2cd2142dfdf7098ab"

      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
  end

  test do
    system "#{bin}/updatecli version"
  end
end
