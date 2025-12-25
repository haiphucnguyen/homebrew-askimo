# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.1.23"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.1.23/askimo-darwin-arm64.tar.gz"
      sha256 "ca2d689e335caf75b8970157a15fc4b63255ebaf9a1b1a3e401973d7a6a7cf68"
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
