class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.10.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.10.1/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "d55763838081661a540d63c576acdeac020a2ec23a51f71d6121fde15c87a963"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.10.1/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "ae29ef0c77b997f60f84e6572c6db2522aa16ccc333ccc01dd1536689e6ff840"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.10.1/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "69151c86271868b6b79017ee62f7c10e150b973bff5426a57a64b5fe27e237ad"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
