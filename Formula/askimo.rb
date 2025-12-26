# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.2.1"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.1/askimo-darwin-arm64.tar.gz"
      sha256 "021d3e820983ce0faa2c69b4669961f2b99413c177802e8c197e80bc6aca8bbe"
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
