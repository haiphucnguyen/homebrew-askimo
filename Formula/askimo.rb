# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.1.7"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.1.7/askimo-darwin-arm64.tar.gz"
      sha256 "62ac720480c1d964187e8f8502c5f3d20bbd81dfe4d8c6966628658e554e07da"
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
