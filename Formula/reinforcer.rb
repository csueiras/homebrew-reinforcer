# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reinforcer < Formula
  desc "Codegen tool for easy adoption of resiliency patterns in Go"
  homepage "https://github.com/csueiras/reinforcer"
  version "0.9.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/csueiras/reinforcer/releases/download/v0.9.1/reinforcer_0.9.1_Darwin_x86_64.tar.gz"
    sha256 "c6d96e35f83302d1f4af2f7bbc697b7e21af2215e71e75fb32446aca0441e0a1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/csueiras/reinforcer/releases/download/v0.9.1/reinforcer_0.9.1_Linux_x86_64.tar.gz"
    sha256 "ffef539d29646b2c42d9cfe141856ec32b9c1c32d67e9fc89772f016644073ae"
  end

  def install
    bin.install "reinforcer"
  end

  test do
    system "#{bin}reinforcer --version"
  end
end
