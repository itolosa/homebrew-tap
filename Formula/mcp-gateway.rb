class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.09"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.09/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "c1bb9a8d46d02d79d40135188b9ffd1968df9e9eff60c8c7a5fda3bf14222ad7"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.09/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "96f206e1d962f4afa7d90430edc13ff5e8bd973a07a1f640c640d3ef5d997b47"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.09/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "570a04da8231b6031358d8def2707fddd4dc9928fd41857d25b2251fa7c5a364"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
