# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.1.15"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.1.15/askimo-darwin-arm64.tar.gz"
      sha256 "c78bd6c5ac5610c461085c676e4a7303b5813d1816590972643f6bde711379ca"
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
