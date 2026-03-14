class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.14.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.1/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "3b403cce8a17eeb9b590c7fb19448896f5a52714f1bce4473e8a0775b40175ac"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.1/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "70082bd94777ef9285cad43106414f981ffdb0ea6c46999d6e5a287ce9ee8859"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.1/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0d6d0e9943ea16a3795693bc399f55bdc5f1731c2309824e31a88051ebc9ef82"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
