# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.1.12"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.1.12/askimo-darwin-arm64.tar.gz"
      sha256 "fce5f2ac4c56e8943bf97d9675489b831d7183de517922b273b541a08ec0a9b9"
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
