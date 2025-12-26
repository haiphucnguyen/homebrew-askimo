# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.2.0"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.0/askimo-darwin-arm64.tar.gz"
      sha256 "4afbf9ec6987afcfe6b1049dc5962a0119f63a0accaa57807752294c616ac04a"
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
