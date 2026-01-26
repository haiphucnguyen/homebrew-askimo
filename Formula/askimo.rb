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
      sha256 "8a3dd4a4bf9964c4aff3b1aa19aab11bfc37f11ac827f8cb0026c4a47e58c075"
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
