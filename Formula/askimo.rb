# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.2.9"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.9/askimo-darwin-arm64.tar.gz"
      sha256 "fd4be89cf840d583bfeb2affa59a20e138b414f2a9f7b0ce9a924bacc6d2e198"
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
