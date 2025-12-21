# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.12"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.12/askimo-darwin-arm64.tar.gz"
      sha256 "d8921b0014e6f83c8e77d50f574ed73adc2f7f519928a1b4be7bb6ddf2848bc6"
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
