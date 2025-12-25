# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.2.0"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.0/askimo-darwin-arm64.tar.gz"
      sha256 "e6c8026ae71607cfe9f2b4f4182fffc0b4635d6a2ccbfb674538cb7c5e0e18e2"
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
