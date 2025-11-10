# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "0.3.0"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v0.3.0/askimo-v0.3.0-darwin-arm64.tar.gz"
      sha256 "1b1e2fc14e13d8a8370e36d6d7c88357d5d73c2440e62898500b88abfc973c35"
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
