class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.12.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.5/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "54d5bb50cc505c59eb5d216574f6310882bce1d81a6eef0e89ef7c81385f9b29"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.5/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "9d15f5163d0776513605ec5beb224a7a0359460840ed99db7f4a2d4db0eb0965"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.5/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "05841cef7f0fbc9a199b28a0078b1cb67daf15897463d3ecf1d014ebfaefeb07"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
