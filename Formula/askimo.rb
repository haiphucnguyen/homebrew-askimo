# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.1.6"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.1.6/askimo-darwin-arm64.tar.gz"
      sha256 "a5a28cc2bbca6020f6e945a5df331cfa38e19df6ec1631afd5d24bef99ca1c40"
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
