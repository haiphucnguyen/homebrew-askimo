# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.11"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.11/askimo-darwin-arm64.tar.gz"
      sha256 "9eec20aaf0ed89268a33da3ab3ef3f3c0fdf6e4eb0300fce0584771224e019c9"
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
