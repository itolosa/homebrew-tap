class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.05.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.4/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "ae29d68509dfcd5ca0352bcf1e8175513ec9efdd3da333db1abe913746f411d0"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.4/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "7aeae303cf83c4ea1d9f4b0e0ac3f67c605a78f338c05d647579e087ccd90d14"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.4/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cf844272ad209b5c0e5c6a9c39448c9951db5fe8647a878e0d3f49b380222c97"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
