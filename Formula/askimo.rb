# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.0.0"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.0.0/askimo-darwin-arm64.tar.gz"
      sha256 "014b6b88965950aaebf1a04d63f4fa96494be2914c60462ab0e1715a6ade9327"
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
