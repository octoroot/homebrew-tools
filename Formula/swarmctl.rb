# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Swarmctl < Formula
  desc "A k8s service swarm"
  homepage "https://github.com/octoroot/k-swarm"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/octoroot/k-swarm/releases/download/v0.1.0/swarmctl_0.1.0_darwin_amd64"
      sha256 "97b2ff684b2833ad32fba0e55001930a098b4a4d8557ad1f788d2417bdae0dae"

      def install
        bin.install "swarmctl_0.1.0_darwin_amd64" => "swarmctl"
        bash_completion.install "completions/swarmctl.bash" => "swarmctl"
        zsh_completion.install "completions/swarmctl.zsh" => "_swarmctl"
        fish_completion.install "completions/swarmctl.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/octoroot/k-swarm/releases/download/v0.1.0/swarmctl_0.1.0_darwin_arm64"
      sha256 "3d61f444420426070ef253f165f3a4daffdec2d73678da3f66c2ea37c3546b93"

      def install
        bin.install "swarmctl_0.1.0_darwin_arm64" => "swarmctl"
        bash_completion.install "completions/swarmctl.bash" => "swarmctl"
        zsh_completion.install "completions/swarmctl.zsh" => "_swarmctl"
        fish_completion.install "completions/swarmctl.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/octoroot/k-swarm/releases/download/v0.1.0/swarmctl_0.1.0_linux_amd64"
      sha256 "048dae62f335d1d5c5dfdc903e9b92f04be57ce6281bef3d96908e4f6c8a70e5"

      def install
        bin.install "swarmctl_0.1.0_linux_amd64" => "swarmctl"
        bash_completion.install "completions/swarmctl.bash" => "swarmctl"
        zsh_completion.install "completions/swarmctl.zsh" => "_swarmctl"
        fish_completion.install "completions/swarmctl.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/octoroot/k-swarm/releases/download/v0.1.0/swarmctl_0.1.0_linux_arm64"
      sha256 "bd3c823701a084f57ed542e784af5173f1741ccba69c88d7b337944e36042eea"

      def install
        bin.install "swarmctl_0.1.0_linux_arm64" => "swarmctl"
        bash_completion.install "completions/swarmctl.bash" => "swarmctl"
        zsh_completion.install "completions/swarmctl.zsh" => "_swarmctl"
        fish_completion.install "completions/swarmctl.fish"
      end
    end
  end

  test do
    system "#{bin}/swarmctl -v"
  end
end
