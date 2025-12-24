# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.1.16"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.1.16/askimo-darwin-arm64.tar.gz"
      sha256 "57f013deece4f499bf3a2d6c12b13dc67ce56894b869f160957e49fd9a9ad1aa"
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
