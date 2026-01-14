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
      sha256 "3e16145d7c7a76c2045094dec0f8faafaa5b1cb2afdf5b96f5641f9f61dbb437"
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
