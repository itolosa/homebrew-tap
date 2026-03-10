class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.10/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "aeb723dffb115d9a21f4c5ec761f14e43b33edcae9baf42a8bc0d7afd6322862"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.10/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "dab0165c2591a5531a6338a0254ee6438e463614b4743d626681a34c9c0db8c8"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.10/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ba45f31480f27304f13876186e99774d135e3b496c919475ba35e2e9dca9bb49"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
