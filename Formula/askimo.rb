# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.1.21"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.1.21/askimo-darwin-arm64.tar.gz"
      sha256 "098ca27d10cf017c3f10a07651520b0d193bd1c3323eedc3bd49a9abd28d1657"
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
