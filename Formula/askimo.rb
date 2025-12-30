# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.2.2"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.2/askimo-darwin-arm64.tar.gz"
      sha256 "9e4de65b59f7b2925586fd3421aa6b97a5316d474a75cefa791fbdec13d32159"
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
