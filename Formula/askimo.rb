  class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  version "0.1.010"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/haiphucnguyen/askimo/releases/download/v0.1.010/askimo-v0.1.010-darwin-arm64.tar.gz"
      sha256 "f3e8b9238483a1525866d51374111acd5b1819769a2ff87f5d2c83ef7adcb0a4"
    end
  end

  def install
    candidates = [
      "bin/askimo",
      "./bin/askimo",
      Dir["*/bin/askimo"].first,
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
