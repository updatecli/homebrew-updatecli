# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Updatecli < Formula
  desc "Updatecli is a declarative dependency management command line tool."
  homepage "https://updatecli.io/"
  version "0.77.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/updatecli/updatecli/releases/download/v0.77.0/updatecli_Darwin_x86_64.tar.gz"
      sha256 "953974a0480b46d03d8e7d988fff8a9dcaf26714638758ea0343d24ddef0812f"

      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
    on_arm do
      url "https://github.com/updatecli/updatecli/releases/download/v0.77.0/updatecli_Darwin_arm64.tar.gz"
      sha256 "a82be765a0b866c53e4560ca2eb80674c2fbab9b513bc731e365d117fd618745"

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
        url "https://github.com/updatecli/updatecli/releases/download/v0.77.0/updatecli_Linux_x86_64.tar.gz"
        sha256 "95ae959843639edf752a6a8ee92e4d0fc8b8085eead2fb752c4f5e965f591b79"

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
        url "https://github.com/updatecli/updatecli/releases/download/v0.77.0/updatecli_Linux_arm.tar.gz"
        sha256 "b62348edb72e77793cca07ad0fe047967a8b4b6a9f6c00f7523165618a2a8254"

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
        url "https://github.com/updatecli/updatecli/releases/download/v0.77.0/updatecli_Linux_arm64.tar.gz"
        sha256 "9368d513530c188d92db333064c8623fb8f372bd2f74f2035a0ab6efb9075314"

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
