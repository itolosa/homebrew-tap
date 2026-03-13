class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.13.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.13.1/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "014a69b8aef64a05cecbc9d75fb71277ef99d73efa8e0dbb80bf910cc8c3bb81"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.13.1/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "f94577befbf4b3e7efc904389ce31a9c6c01eefcfe779fd49524cedb153f705e"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.13.1/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0ecadfb7b8312f8226cde2a7d40a6d527d1527b0870b245f701cd179f53cd97a"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
