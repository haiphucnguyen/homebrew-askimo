  class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  version "0.0.4"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      url "https://github.com/haiphucnguyen/askimo/releases/download/v0.0.4/askimo-v0.0.4-darwin-arm64.tar.gz"
      sha256 "1ca2ec3422bffe59f799758cb537b9dd571f35ed87a1b41ae0c7cd6c353753ee"
    end
  end
  
  def install
    bin.install "bin/askimo"
  end
  
  test do
    output = shell_output("#{bin}/askimo --version")
    assert_match "askimo", output.downcase
  end
end
