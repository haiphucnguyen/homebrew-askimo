# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.1.10"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.1.10/askimo-darwin-arm64.tar.gz"
      sha256 "bc64e5d6ed260b5547c0242c9196042bce0ae4b7546bca0c3258e75ca8265aab"
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
