# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.1.13"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.1.13/askimo-darwin-arm64.tar.gz"
      sha256 "b2c4cdb94e30189a7dc43d4b32a8fbe9be90a43596c6f4bac3f6fbb9740136ec"
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
