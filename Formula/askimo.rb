# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.20"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.20/askimo-darwin-arm64.tar.gz"
      sha256 "f75365c7d1256fbda1cebd4cf3c5f2af6c6b56e2260e446faa9e8b6cb49ca0b6"
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
