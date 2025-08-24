  class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  version "0.0.4"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      url "https://github.com/haiphucnguyen/askimo/releases/download/v0.0.4/askimo-v0.0.4-darwin-arm64.tar.gz"
      sha256 "520d9a1149795f02e6c69e5edcf1d017fa474b850011da7c71bc35e2e8a69dbb"
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
