class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.14.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.6/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "6d869147114b5917c3cc4cc074e1ed6dc86075dbbad80dceb523f96b8e83ffa0"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.6/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "d41ea019a81e3d09db7202bde006e7b434effd3d8247c06a9a9e943568034377"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.6/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3292395e129321451e6aac1633c54db2c1e85f46a4c35bb15ed7f76cda549ff8"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
