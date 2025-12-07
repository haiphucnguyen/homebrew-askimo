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
      sha256 "6bcf269fa0a8a13fddeb134aa7bf06f72e52bb3d0dc6a48790e08a2e956f5e85"
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
