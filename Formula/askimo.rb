# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.1.10"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.1.10/askimo-darwin-arm64.tar.gz"
      sha256 "a1096a72439d820e2e7de67d10fa54d97bc04e9980c07b05a8f4e1b9f828369f"
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
