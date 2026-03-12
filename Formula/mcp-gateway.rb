class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.12.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.12/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "913988fc23ba0ca798c214d7de05ee5b7a2e2e06bdbf38b3c8575be885f9cbaa"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.12/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "634c397cc9a5fb774b1a428f34161ae5177b95ef57d00e09b08ebf21e38d54c9"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.12/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "283f524e8a9c134364299efe03748b20fa79fca8c59cece4069252fd38a35d02"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
