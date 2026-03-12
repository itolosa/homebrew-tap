class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.12.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.8/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "10a22217e6bed3d5802655975b0a5f1b9b5ac68477870e3167a0a6cd2786313a"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.8/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "195e0bb93a471b77c518b6ec5d9b22654bbe4d830a8b6ca877f58068ded2e6a3"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.8/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e295dc6a1878e4ca0bd329d16584ce7fcd53f4660bd4f7e7e2155c6f2fbf8e33"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
