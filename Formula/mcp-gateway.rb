class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.14.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.8/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "c71b216ee960a40d19dd4e78581623f10b9469e8bf95a507b53d24e13988b58f"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.8/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "bdbd10c7eb40ac9fdc393bcd70d7619774931d2a0443068096dbdab1ccc22382"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.8/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3e8343986ff8c87c3355c81060b13bc642a1bdb85c59fee9049eeec4d99e3215"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
