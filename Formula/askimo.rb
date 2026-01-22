# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.1.4"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.1.4/askimo-darwin-arm64.tar.gz"
      sha256 "7f7238776a93ed25133e6d52895ebb240c58aa570594f95a776e2da65b36291f"
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
