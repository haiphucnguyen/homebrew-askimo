# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.1.5"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.1.5/askimo-darwin-arm64.tar.gz"
      sha256 "8f4667483ef5c1c830f0120571a8f5ddd1bbcece74e4d58c72a31ae505eaa3f1"
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
