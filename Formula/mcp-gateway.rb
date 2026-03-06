class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.06.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.2/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "7b7c9d5ac9e78edcdbf49f02e3a46a5403347baffaab62056841010d9de47308"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.2/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "d2b7b43fd756db4288fbd2bc648a59952337aa899c1b5b58b472947f1dd3c6df"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.2/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f48711197cab38defc44bdc116b3635d5e51ec4d2ababa290d1e27a57df3b6c5"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
