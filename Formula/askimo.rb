# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.1.1"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.1.1/askimo-darwin-arm64.tar.gz"
      sha256 "daf085b64b9e896f3372f34a8a697fef353a1edf3575f028bb9341e51b9db23e"
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
