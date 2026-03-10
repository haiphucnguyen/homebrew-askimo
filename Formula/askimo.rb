# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.22"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.22/askimo-darwin-arm64.tar.gz"
      sha256 "7ab5e94526036c711c2afc3b309545ef77ae96d55dbfcc5b84774ac9c3fc261c"
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
