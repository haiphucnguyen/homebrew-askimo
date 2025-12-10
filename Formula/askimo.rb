# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.3"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.3/askimo-darwin-arm64.tar.gz"
      sha256 "1284f153dbb201f176307cb2fe16301a0b96f1138cf1ddad4c2b324334cd755a"
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
