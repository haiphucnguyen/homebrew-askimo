# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.19"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.19/askimo-darwin-arm64.tar.gz"
      sha256 "dc178749fd60b07eb7ad35d7a48a0898dc5acd40aaa8eb479546447d0770489e"
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
