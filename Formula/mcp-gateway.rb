class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.12.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.9/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "5be2f148d700f5b58033e3b665fbbde5bd84548d71bf816cb818a48cd6bf7ee6"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.9/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "4a6389fb2a51b26a78120049bb5532316685ed13b2ebe02cd624a172700a5ae9"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.9/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "111182335571c8093021f9fdbb686eba0b725f3df1be297e21aefc2d1dde685e"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
