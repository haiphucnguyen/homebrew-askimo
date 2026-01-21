# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.12"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.12/askimo-darwin-arm64.tar.gz"
      sha256 "8580a84e68cb0f5b87df8c36116aa4b9b1b5cc764671fc2352619e65f0ae05ac"
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
