class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.13.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.13.2/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "c67ff552f478a6f0183226c1e17ae069d792d6f51c9dbfc10c0b40e8abcb446c"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.13.2/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "e26f59d37a0df8b16060f48e75ac15870e180137dbc690cb7aeb59e345f9b906"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.13.2/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6b7232e2fe8202b95832ac7e9b2972e71e7360f61cde54803d4e3da1b769c2f4"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
