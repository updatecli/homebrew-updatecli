# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Updatecli < Formula
  desc "Updatecli is a declarative dependency management command line tool."
  homepage "https://updatecli.io/"
  version "0.86.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/updatecli/updatecli/releases/download/v0.86.0/updatecli_Darwin_x86_64.tar.gz"
      sha256 "3bf71eb88db6274d1ffed3fbdab80aa46d590d2906d7cb9e2d1b7e25c9c28d41"

      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
    on_arm do
      url "https://github.com/updatecli/updatecli/releases/download/v0.86.0/updatecli_Darwin_arm64.tar.gz"
      sha256 "798802608faedf89d649b91d86b7604488c28d5535ff221d922988690506f698"

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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/updatecli/updatecli/releases/download/v0.86.0/updatecli_Linux_x86_64.tar.gz"
        sha256 "ea3f1c6a2ddb622e20f549f9bd8afdb521de083b14645c8cd4da1f78043c14cf"

        def install
          bin.install "updatecli"
          bash_completion.install "completions/updatecli.bash" => "updatecli"
          zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
          fish_completion.install "completions/updatecli.fish"
          man1.install "manpages/updatecli.1.gz"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/updatecli/updatecli/releases/download/v0.86.0/updatecli_Linux_arm.tar.gz"
        sha256 "3dcb2b9cdd9402fa1c15ba877e3b1b7a86125cb8c2e2834a7fe0bf93178a111b"

        def install
          bin.install "updatecli"
          bash_completion.install "completions/updatecli.bash" => "updatecli"
          zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
          fish_completion.install "completions/updatecli.fish"
          man1.install "manpages/updatecli.1.gz"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/updatecli/updatecli/releases/download/v0.86.0/updatecli_Linux_arm64.tar.gz"
        sha256 "0b29c89afea1a35a59640c33a7687bbf1843c63c51bc6bceeaa0c1df83548fbf"

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
