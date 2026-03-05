class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.04.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.04.17/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "cb32a150a34eff87b63536218fb425d3ff4669c21a2c718cefdfd381af52d3a8"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.04.17/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "1f581f98166fb2eadef14f0e5286fb4ef005cb01c370cbfe007dec83e1e6f2b1"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.04.17/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "84dfb7856304725f5d51306dd608e1a62f1cbad5bc42c96fdb9bceb283a3b430"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
