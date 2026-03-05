class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.05.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.10/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "879fd2eb25176bbf2f5ab10a1e1f1d886c7e415bcf74079a4e152dbe8c8947dc"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.10/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "24cfaf08f6d96b2ac55560b0d530a42284602d8fe06eeb49cf39567d347d9ecc"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.10/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e2a259667e07068f592d1da079bf4ae6722c4799e6bb0bada829df31c00061dc"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
