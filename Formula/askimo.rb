# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.2.10"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.10/askimo-darwin-arm64.tar.gz"
      sha256 "6b956ed26dd3dd70270c54383c1d5d68b36304dc9c82f60d80a081a54c0f1476"
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
