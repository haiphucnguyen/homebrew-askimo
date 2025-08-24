  class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  version "0.0.5"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      url "https://github.com/haiphucnguyen/askimo/releases/download/v0.0.5/askimo-v0.0.5-darwin-arm64.tar.gz"
      sha256 "275327e4a2d8133da3804132952d8da0a77affc6d426106ddc3a0a3344fb3f65"
    end
  end
  
  def install
    bin.install "bin/askimo"
  end
  
  test do
    output = shell_output("#{bin}/askimo --version")
    assert_match "askimo", output.downcase
  end
end
