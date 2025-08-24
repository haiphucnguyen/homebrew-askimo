  class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  version "0.1.0"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      url "https://github.com/haiphucnguyen/askimo/releases/download/v0.1.0/askimo-v0.1.0-darwin-arm64.tar.gz"
      sha256 "a8fbe1fca065a6fbe1127a958d1265b77d1711aabfbfb4b2a741489bb2345fbc"
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
