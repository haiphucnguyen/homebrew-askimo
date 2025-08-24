  class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  version "0.1.03"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      url "https://github.com/haiphucnguyen/askimo/releases/download/v0.1.03/askimo-v0.1.03-darwin-arm64.tar.gz"
      sha256 "61d054daf7cc0b071c3a57cb7256f3e186e4fb87cf435b7c715446f3bb66efb0"
    end
  end
  
  def install
    # Be tolerant to various archive layouts
    candidates = [
      "bin/askimo",
      "./bin/askimo",
      Dir["*/bin/askimo"].first,  # e.g., askimo-vX.Y.Z-.../bin/askimo
      "askimo",
      Dir["*/askimo"].first
    ].compact

    path = candidates.find { |p| p && File.exist?(p) }
    odie "askimo binary not found; archive contained: #{Dir['**/*'][0,30].join(', ')}" unless path

    bin.install path => "askimo"
  end
  
  test do
    output = shell_output("#{bin}/askimo --version")
    assert_match "askimo", output.downcase
  end
end
