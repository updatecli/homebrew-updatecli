# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Updatecli < Formula
  desc "Updatecli is a declarative dependency management command line tool."
  homepage "https://updatecli.io/"
  version "0.47.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/updatecli/updatecli/releases/download/v0.47.1/updatecli_Darwin_x86_64.tar.gz"
      sha256 "10d4e99c3c335681820c1e2fd810b09adbbed468219ba9baccd3c8ababeba09c"

      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/updatecli/updatecli/releases/download/v0.47.1/updatecli_Darwin_arm64.tar.gz"
      sha256 "8cfdcd6137b08d208c0eabf5b6936f6d725847d1b13e272030570f47e1ab6a6d"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.47.1/updatecli_Linux_arm64.tar.gz"
      sha256 "5765d6b64f38618a4c1f92b0cb98bd88a94b29e46f8b01c598c3548b1491b190"

      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/updatecli/updatecli/releases/download/v0.47.1/updatecli_Linux_x86_64.tar.gz"
      sha256 "26ce068f62b18adba8680a02b218c14febf30436c380e7fbb57efc44d49f285e"

      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.47.1/updatecli_Linux_armv6.tar.gz"
      sha256 "36cf0d518017c4c9e6c50c81c87d2ad4aca30c11257add223b53121cb4bd8d1b"

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
