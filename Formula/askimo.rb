# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.1.1"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.1.1/askimo-darwin-arm64.tar.gz"
      sha256 "906bdd3d5746dc40a4a8ec77b740c21b66fb279f77e1ca6ac55be1a1b7973dce"
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
