class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.05.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.11/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "63df52901b67e8e21d3ef5b32bad8a88b78bdc082405353b25d703f045f8821e"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.11/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "6b61d4cf845b8b4c0b4241766773519897d2202d2658f0cc624aadb5724f3a1f"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.11/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e8409365fde016f112f88142d5bf02541e997c89658649599461f0b105a2964d"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
