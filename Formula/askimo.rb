# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.4"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.4/askimo-darwin-arm64.tar.gz"
      sha256 "2b8f86d4ecf78aefc5a8c00d3a17a424b8460901b808d5f690392ec9dc59ad54"
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
