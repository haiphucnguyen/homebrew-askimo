# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.2.7"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.7/askimo-darwin-arm64.tar.gz"
      sha256 "6ce9d3a62787902b0eedaafb1deca6869a24073514ba10c356647da7f7d08843"
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
