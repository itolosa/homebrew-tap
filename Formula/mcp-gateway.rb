class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.13.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.13.3/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "07dd5974b15bd59e71442b961990aa4edd3ac00c41f00fd1f1218adeb6fa283e"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.13.3/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "48670b6f7d5bbb47d9083e0dbec731c4908616e5a82c114c99e8c61f785a4458"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.13.3/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0f44a79f9f4460b978285d95cc9390b49a64e2450010db39108c0a98d6632ae6"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
