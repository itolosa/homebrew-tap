class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.05.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.6/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "128a9f650459aca764ac90b4df74979a92121faae7cc3e0049e620b3572db1a7"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.6/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "4e49274974b90ae36917b8c9fd1cbb7a05020da7ba042d9ff762beed2adbf68b"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.6/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "45f324f9658a2dc6ada9d733e8bb5dcf68e0c4781a059790d575a130792e93dc"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
