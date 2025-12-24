# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.1.20"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.1.20/askimo-darwin-arm64.tar.gz"
      sha256 "84f7bfba3059b2a8d6afb2de0e3e6426fd0532fa7a1a243df21c74ae5037a14a"
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
