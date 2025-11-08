# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "0.3.0"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v0.3.0/askimo-v0.3.0-darwin-arm64.tar.gz"
      sha256 "7315f152a17bbd2eee07b4238240a776210d2fed60a842ee0c535a137ac86418"
    end
  end
  
  def install
    # Expect the tarball to contain a single binary named "askimo"
    bin.install "bin/askimo"
  end
  
  test do
    output = shell_output("#{bin}/askimo --version")
    assert_match "askimo", output.downcase
  end
end
