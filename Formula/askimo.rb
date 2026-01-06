# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      version "1.2.6"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.6/askimo-darwin-arm64.tar.gz"
      sha256 "298d6c39511d316c893f3ce97b8c02e7469fdf1436fe035b8c9de715592bd2d7"
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
