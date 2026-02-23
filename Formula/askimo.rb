# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version ".1.2.17"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v.1.2.17/askimo-darwin-arm64.tar.gz"
      sha256 "c5d1daf8ebd5dda42f78dd80185516f0c98e301336be331ff112afd8dfaf70f9"
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
