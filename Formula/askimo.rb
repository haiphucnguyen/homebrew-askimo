# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.13"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.13/askimo-darwin-arm64.tar.gz"
      sha256 "2f048a93ad093d020a015e39cd6b03c6b2af6537800c1d58457b59dc67cc721f"
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
