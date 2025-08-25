  class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/haiphucnguyen/askimo/releases/download/v0.1.1/askimo-v0.1.1-darwin-arm64.tar.gz"
      sha256 "1e4c81ce0db62c5d9bbf5a24acf842418d4701fa07bd16435f98508ec9e51d0a"
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
