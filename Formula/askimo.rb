# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.1"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.1/askimo-darwin-arm64.tar.gz"
      sha256 "a627d37ed3c30f60e360701940c8d6777bb58421d2dd0406d6e04a7a98e35040"
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
