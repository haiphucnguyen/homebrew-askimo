# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.1.3"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.1.3/askimo-darwin-arm64.tar.gz"
      sha256 "671f9c3eb66ef58671da9864e0bdc94496582e9b5f1780db12fbbe4139efebb1"
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
