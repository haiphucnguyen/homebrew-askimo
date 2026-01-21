# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.12"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.12/askimo-darwin-arm64.tar.gz"
      sha256 "e8af14e71c1449fb951ba5ee7ee28ba9b6b36f4e4a13de89ccc2d9ad52ad47e8"
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
