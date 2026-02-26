# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.15.1"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.15.1/askimo-darwin-arm64.tar.gz"
      sha256 "b18d187e534732494772bed5c01d73ee8fbd16a0a9454ad998197a78927e23c8"
    end
  end
  
  def install
    # Expect the tarball to contain a single binary named "askimo"
    bin.install "askimo"
  end
  
  test do
    output = shell_output("#{bin}/askimo --version")
    assert_match "askimo", output.downcase
  end
end
