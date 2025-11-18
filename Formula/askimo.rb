# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.0.0"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.0.0/askimo-v1.0.0-darwin-arm64.tar.gz"
      sha256 "692964fe363cbb02defbe9c64b2832f6e32c71b2bed283a1bc9c31ad6d056b8c"
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
