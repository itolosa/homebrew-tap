class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.12.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.1/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "74c1905045f277f12c293b4077a749dc4fd1aca94dc22ff3d505e97345061d19"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.1/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "dfb513b53cb5015ebef908fd46c5aee22980cc691d0e3d0b63846599c6c42f58"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.1/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7b6e56b9a0490ffe8f4cfba3606edc2f59aefd8d5c3dc5eedcd73083755f1d73"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
