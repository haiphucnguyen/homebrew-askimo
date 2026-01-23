# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.1.9"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.1.9/askimo-darwin-arm64.tar.gz"
      sha256 "2e97403a88fe216b209fe258454202c4e380473572370a77ad9e145d00fa407c"
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
