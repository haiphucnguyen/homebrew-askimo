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
      sha256 "2d8fadfc44a3a112e50d11ab2f5433939b3d921f32a52b88e923e45f4818d4ab"
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
