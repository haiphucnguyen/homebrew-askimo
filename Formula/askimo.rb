# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.15"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.15/askimo-darwin-arm64.tar.gz"
      sha256 "368d438add5827596970b363aa033c9ca5747501cdf9e09fe654f7c2dbfbe423"
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
