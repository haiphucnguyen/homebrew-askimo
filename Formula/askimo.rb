  class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  version "0.1.02"
  license "Apache-2.0"
  
  on_macos do
    on_arm do
      url "https://github.com/haiphucnguyen/askimo/releases/download/v0.1.02/askimo-v0.1.02-darwin-arm64.tar.gz"
      sha256 "02586bc47135857b1072d6a3ba6d87ba40476c0a022f3d142d3426e15e112329"
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
