# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.1.3"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.1.3/askimo-darwin-arm64.tar.gz"
      sha256 "1eec65f1c160ca9cf7fb91104a6b1a7f0b2611f7b1cfc5edeb92794ff7fd93f2"
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
