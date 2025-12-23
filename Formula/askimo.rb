# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.1.8"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.1.8/askimo-darwin-arm64.tar.gz"
      sha256 "f229b8bbf7c4179be32114809e72f5af14ac6a064772a0b900f0895f8ee94a2c"
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
