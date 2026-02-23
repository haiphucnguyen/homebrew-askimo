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
      sha256 "595f02b754385f7cf1079330628c64b5fe64c0caa5df78c224a4361a98bf3352"
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
