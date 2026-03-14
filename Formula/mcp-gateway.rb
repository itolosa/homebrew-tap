class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.14"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "585e829b4bc6d34a628dcc0b728e9a80da5e466ab68d6653a008aa68259b57ec"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "ca536d8152a746901334625042fac9dee95b75515bffe218f52b0806858ec96f"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bc2b97c674cb3a4b2d13820860565ef41a094fe248aec9c7c081b5ed27ae5ded"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
