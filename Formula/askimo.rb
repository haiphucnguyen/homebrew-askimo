# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.16"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.16/askimo-darwin-arm64.tar.gz"
      sha256 "e71a1b6bf659c9cefa28cc793d026b2bd39f3a9277f2c58a268e1a73e64b20a5"
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
