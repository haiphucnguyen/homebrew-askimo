  class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  version "0.1.015"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/haiphucnguyen/askimo/releases/download/v0.1.015/askimo-v0.1.015-darwin-arm64.tar.gz"
      sha256 "9c19e63889ff307d8d99c2d701bead6d2a07f1f7b56ae8bce33fa3dc25a9e919"
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
