# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.2.3"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.3/askimo-darwin-arm64.tar.gz"
      sha256 "ac8ba0e8279d10fea5a63d6db3205418c8dcff57a935c4f0f31e5ba5aa6a4a7f"
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
