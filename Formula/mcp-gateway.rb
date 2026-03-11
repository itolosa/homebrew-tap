class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.11.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.11.1/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "d66c0cc4f173b695596144b36f143ed3da766d0f6a2d4a42b99db26bf4518a46"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.11.1/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "717b1ed6ebdd5d7c0140add4a8b1dcc600563eeae5be1687d0ab181b6f612527"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.11.1/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d8acfed5019d20f1074122ca0176a0a3ec00caf3a82d0059871d44a3df36371e"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
