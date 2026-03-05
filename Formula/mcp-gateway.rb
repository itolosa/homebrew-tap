class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.05.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.3/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "c232e9af920d9d7f71550263cab9ff7f36599e9c75617320adb749b1b0d2b457"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.3/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "3789e511a33d4d13f5f107546db7081c902296e59ff850ffa99ec0d2f77cee2d"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.3/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3159e9a12bc55e3cbfb8e3c87687e30c94bc36d8f3534c16df32dbf3ef19cdf0"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
