# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.2.5"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.5/askimo-darwin-arm64.tar.gz"
      sha256 "6310b2c2543eb1a0b2c193509febae43b9b96f29b69f5d5a56e4a0c02e670b42"
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
