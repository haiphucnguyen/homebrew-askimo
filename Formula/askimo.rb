# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "0.2.0"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v0.2.0/askimo-v0.2.0-darwin-arm64.tar.gz"
      sha256 "82e94f78f53bc53b0e06d7051a1fc6045ba58caaa0016a4a9a67f7ad80f19a20"
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
