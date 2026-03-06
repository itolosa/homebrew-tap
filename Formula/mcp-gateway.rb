class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.06.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.3/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "7bd42eae518ec541a1a09ae29a2ebaa70ce9c96b23b7fee50d81413b87800b35"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.3/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "f75cfaf9fa79c898e13173933f9fd148eb260283def1a9972ecd0088d3084915"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.3/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2973cf655379cf155dc2fcd1b1102c787b8ce325f30ef7b251ba891099095cd2"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
