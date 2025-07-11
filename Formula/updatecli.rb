# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Updatecli < Formula
  desc "Updatecli is a declarative dependency management command line tool."
  homepage "https://updatecli.io/"
  version "0.103.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/updatecli/updatecli/releases/download/v0.103.1/updatecli_Darwin_x86_64.tar.gz"
      sha256 "c5a5e0e4a7a0ad5f7143da5d93f473b0c740ed225007e921cdeb8c146f3422d5"

      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/updatecli/updatecli/releases/download/v0.103.1/updatecli_Darwin_arm64.tar.gz"
      sha256 "4ae1d5390f4616988fb0d02372322b7aa8b7cb1028bc36c7558f9eb6aa8d6b22"

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
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.103.1/updatecli_Linux_x86_64.tar.gz"
      sha256 "ebeea0bf3fc8bb80903f7fcf11bbe9c77926bd03cb511b284e3e75ed618f6d94"
      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
    if Hardware::CPU.arm? and !Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.103.1/updatecli_Linux_arm.tar.gz"
      sha256 "18fc0584eff5c8c8467f50248e4796b1af5196fa1dc31800e3a442840bdbebf4"
      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.103.1/updatecli_Linux_arm64.tar.gz"
      sha256 "2f890d9f08a2a7180630692d864b214c9bf5fe762c8aaf821588115ff4c12146"
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
