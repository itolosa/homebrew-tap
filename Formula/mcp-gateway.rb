class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.06.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.1/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "254c2e0dc9ddb403ffeb1ed0121dea31523dcc51be71fe8b3d5edfb4a5e9d991"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.1/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "e75b0543f2f590e282dfce81bc058893419ee2650287263699252ec5a5fb6b73"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.1/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1bc0cd999d797de71d0ce93ae09fc9f5a75e5356008dc9d27be7df943b62ee5f"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
