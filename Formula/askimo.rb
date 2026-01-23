# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.1.6"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.1.6/askimo-darwin-arm64.tar.gz"
      sha256 "9efd8068b4533068c8551ae82de9a085c16096584b6aa407e1353fa476206832"
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
