# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Updatecli < Formula
  desc "Updatecli is a declarative dependency management command line tool."
  homepage "https://updatecli.io/"
  version "0.92.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/updatecli/updatecli/releases/download/v0.92.0/updatecli_Darwin_x86_64.tar.gz"
      sha256 "fe3de4367ece6cdab7629abc32f00e947163e539583270ee2aa9346752147d81"

      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/updatecli/updatecli/releases/download/v0.92.0/updatecli_Darwin_arm64.tar.gz"
      sha256 "b274b5ec3b6766c88ad103a1779598b6562bd0b839b09196f85edf732f8af9a9"

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
      if Hardware::CPU.is_64_bit?
        url "https://github.com/updatecli/updatecli/releases/download/v0.92.0/updatecli_Linux_x86_64.tar.gz"
        sha256 "b33f7c3a666285c3d4db4f33ccabe9fdd9bc5b1989131ef2bdc7624fd6cc651a"

        def install
          bin.install "updatecli"
          bash_completion.install "completions/updatecli.bash" => "updatecli"
          zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
          fish_completion.install "completions/updatecli.fish"
          man1.install "manpages/updatecli.1.gz"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/updatecli/updatecli/releases/download/v0.92.0/updatecli_Linux_arm.tar.gz"
        sha256 "17d3882e949e95b3d0273d99bea18869fe28bd508a53f2a0398c3ac5ab6f7f94"

        def install
          bin.install "updatecli"
          bash_completion.install "completions/updatecli.bash" => "updatecli"
          zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
          fish_completion.install "completions/updatecli.fish"
          man1.install "manpages/updatecli.1.gz"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/updatecli/updatecli/releases/download/v0.92.0/updatecli_Linux_arm64.tar.gz"
        sha256 "e0eae88731d8bd00dd201d7fd6ebab5f198b1affdde35d4d8c120182ef6f3c7f"

        def install
          bin.install "updatecli"
          bash_completion.install "completions/updatecli.bash" => "updatecli"
          zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
          fish_completion.install "completions/updatecli.fish"
          man1.install "manpages/updatecli.1.gz"
        end
      end
    end
  end

  test do
    system "#{bin}/updatecli version"
  end
end
