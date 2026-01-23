# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.1.8"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.1.8/askimo-darwin-arm64.tar.gz"
      sha256 "b0ed3c3277be83cb01a1da5fef64d16a187d347e0d9082fdec7303ad7891d418"
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
