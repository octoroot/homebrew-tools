# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/custom_download_strategy"
class Swarmctl < Formula
  desc "A k8s service swarm"
  homepage "https://github.com/octoroot/k-swarm"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/octoroot/k-swarm/releases/download/v0.3.2/swarmctl_0.3.2_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "7f1dfdcbbbe400914e5618655991ed8d020c50681e772f7224334e43b3a2d268"

      def install
        bin.install "swarmctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/octoroot/k-swarm/releases/download/v0.3.2/swarmctl_0.3.2_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "1cc828566e11c9ed0ad360f259f19324b99d15462f99856881ce78de0f569d51"

      def install
        bin.install "swarmctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/octoroot/k-swarm/releases/download/v0.3.2/swarmctl_0.3.2_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4011b5923d601857c6390f86dab64064dc33891accd71706a70a879f259173a4"

      def install
        bin.install "swarmctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/octoroot/k-swarm/releases/download/v0.3.2/swarmctl_0.3.2_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "5c0634e62a66346ff2c6708f8b6615d39cffbbcd291bad5119ddedcf3f835b48"

      def install
        bin.install "swarmctl"
      end
    end
  end

  test do
    system "#{bin}/swarmctl -v"
  end
end
