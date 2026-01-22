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
      sha256 "50469ce515ce465e5f150cf1ea20ee0eb3523cdc427a5d103d060b1946ab9b83"
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
