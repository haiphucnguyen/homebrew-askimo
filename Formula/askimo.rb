# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.17"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.17/askimo-darwin-arm64.tar.gz"
      sha256 "a0440ca057385c45a331c6526f3a1c58e4b55087d83b58110c1a1860e6129b7a"
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
