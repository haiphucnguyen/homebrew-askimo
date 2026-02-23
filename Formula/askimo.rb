# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.15.1"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.15.1/askimo-darwin-arm64.tar.gz"
      sha256 "08a0eeaf953158c6c293ed35919d160b495a2387b2a5e8a8c1ad4bdd4905ccac"
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
