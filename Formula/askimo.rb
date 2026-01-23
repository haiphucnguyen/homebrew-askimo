# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.1.12"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.1.12/askimo-darwin-arm64.tar.gz"
      sha256 "8a4442388ee129b0c247ba5e88bf01856379138fcd6681874ebec2d1d11977be"
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
