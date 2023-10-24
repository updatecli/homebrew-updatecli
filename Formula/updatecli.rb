# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Updatecli < Formula
  desc "Updatecli is a declarative dependency management command line tool."
  homepage "https://updatecli.io/"
  version "0.65.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/updatecli/updatecli/releases/download/v0.65.0/updatecli_Darwin_x86_64.tar.gz"
      sha256 "270338352ef348db7474d53ee1a5f1c971e0fe80b6ace6966a38a0ea8f47af6b"

      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/updatecli/updatecli/releases/download/v0.65.0/updatecli_Darwin_arm64.tar.gz"
      sha256 "ab7cfa65d81ef21ba8802d9db23298e53bca5cacde2a530071164b554cab858f"

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
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.65.0/updatecli_Linux_arm.tar.gz"
      sha256 "57b4dc246ea5b30388254a7cffce0a96beddbc0bc3f1ac150d101a468a3b8610"

      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/updatecli/updatecli/releases/download/v0.65.0/updatecli_Linux_x86_64.tar.gz"
      sha256 "4e66658a7fa2615de30d8a6b82506ea3870b56993d50bd5c5db7011e4c394861"

      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.65.0/updatecli_Linux_arm64.tar.gz"
      sha256 "3c8590df903ea37e9872478e8b6c6c63c04c9f28617906f3f5bb8375c4c424b8"

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
