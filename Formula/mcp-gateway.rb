class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.05.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.12/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "487b9526d49089f513fbdbdcdeedba96871e5208efd41b8aacd37df3a271ffa1"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.12/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "02af30e6f69e7fd1f3d1e4f91132aa3b801894bbb9bb673e8c563327ca61da11"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.12/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a00091338c216603848f791059da6f8a2e19e80ca8c855305e26f907618516f5"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
