# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version ".1.1.1.24"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v.1.1.1.24/askimo-darwin-arm64.tar.gz"
      sha256 "649b72e7df1fd06ebed70fc23b9a359c4f606a0df0b1f60a0b53cc1cfe96dd23"
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
