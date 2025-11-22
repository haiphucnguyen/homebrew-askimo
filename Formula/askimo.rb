# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.0.0"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.0.0/askimo-darwin-arm64.tar.gz"
      sha256 "f535718f1a74d5541e16aad6220060a23a2352244d303112e75f9d07988b01a8"
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
