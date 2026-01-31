# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.14"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.14/askimo-darwin-arm64.tar.gz"
      sha256 "c90902263596ba9dd433df2517458841e0c188ddcbad5c3cf3bcaa3aa9a18993"
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
