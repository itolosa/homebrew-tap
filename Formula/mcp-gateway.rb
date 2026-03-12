class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.12.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.6/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "1c5c4ed25f297181883abcd42c8a1a8a35280c9b0d418e890f5cf7d4778d9a1e"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.6/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "aef0b373f02ce727bdbefcbf44a35f2f6a870d1db5e00107ce6a3243557811e6"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.6/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2d87f5a20c88ccafba93e5c98b5b4feb4bff2a88c90b7eaa7413348002e4e6c0"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
