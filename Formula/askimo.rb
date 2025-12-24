# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.1.17"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.1.17/askimo-darwin-arm64.tar.gz"
      sha256 "23f58a842adfada6aaa6229df39a6dfda9533e006dd871391f35cbb3fb4f3029"
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
