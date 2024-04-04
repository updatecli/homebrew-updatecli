# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Updatecli < Formula
  desc "Updatecli is a declarative dependency management command line tool."
  homepage "https://updatecli.io/"
  version "0.75.0-rc.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/updatecli/updatecli/releases/download/v0.75.0-rc.1/updatecli_Darwin_x86_64.tar.gz"
      sha256 "7e76ebdb4b5c78aa064911466ddb18cd8e6d79685222269b0d98b1351203d8f7"

      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/updatecli/updatecli/releases/download/v0.75.0-rc.1/updatecli_Darwin_arm64.tar.gz"
      sha256 "1194ae063c4f2e6cc8683f5acc0b4efc17dfadb04b9f0cfe1969b550e878bc61"

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
      url "https://github.com/updatecli/updatecli/releases/download/v0.75.0-rc.1/updatecli_Linux_x86_64.tar.gz"
      sha256 "1559f2ab2d6437ec18e742d5286b295b9e32b9ff0a801017b0008d9714f6893c"

      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.75.0-rc.1/updatecli_Linux_arm.tar.gz"
      sha256 "28d20f638f8f6525c508d181fe013fc9cdabb34a92ed8b655d01b60ad6b01573"

      def install
        bin.install "updatecli"
        bash_completion.install "completions/updatecli.bash" => "updatecli"
        zsh_completion.install "completions/updatecli.zsh" => "_updatecli"
        fish_completion.install "completions/updatecli.fish"
        man1.install "manpages/updatecli.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/updatecli/updatecli/releases/download/v0.75.0-rc.1/updatecli_Linux_arm64.tar.gz"
      sha256 "0dd7b634acedd871b78af89c66e94071cdcb6bc78032c204abd0bf509765a1e5"

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
