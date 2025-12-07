# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.2"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.2/askimo-darwin-arm64.tar.gz"
      sha256 "92c60102118f73f54f8c51b19057a28c00cb8701e930b49930694d9009db91a9"
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
