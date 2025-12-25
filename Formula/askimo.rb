# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version ".1.1.1.24"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v.1.1.1.24/askimo-darwin-arm64.tar.gz"
      sha256 "fa9474e1fdbe8e656548850454d151388e0d2f4cf62056379a7a7ce38a88d5a0"
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
