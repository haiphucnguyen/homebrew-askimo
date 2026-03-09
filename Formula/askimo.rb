# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.21"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.21/askimo-darwin-arm64.tar.gz"
      sha256 "5d7688062995805b2a4719986982951d058f60de853c058022982ee8bcdec327"
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
