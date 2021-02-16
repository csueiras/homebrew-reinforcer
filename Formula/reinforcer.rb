# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reinforcer < Formula
  desc "Codegen tool for easy adoption of resiliency patterns in Go"
  homepage "https://github.com/csueiras/reinforcer"
  version "0.4.1-alpha"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/csueiras/reinforcer/releases/download/v0.4.1-alpha/reinforcer_0.4.1-alpha_Darwin_x86_64.tar.gz"
    sha256 "d2407c399034267a9fef304417c8053bbebd995746ff8bee12692ab4e75a21cf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/csueiras/reinforcer/releases/download/v0.4.1-alpha/reinforcer_0.4.1-alpha_Linux_x86_64.tar.gz"
    sha256 "b979e10ea7ad65658c873444c197b01b6e4cb45ccc972332c9cf11d2823640f8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/csueiras/reinforcer/releases/download/v0.4.1-alpha/reinforcer_0.4.1-alpha_Linux_arm64.tar.gz"
    sha256 "c1acfff29694d6c1f334de32b475dc87d5adfa5d7a7f257abde25d896f33ef1d"
  end

  def install
    bin.install "reinforcer"
  end

  test do
    system "#{bin}reinforcer --version"
  end
end
