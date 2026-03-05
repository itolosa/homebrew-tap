class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.05.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.5/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "442da968fe4a24325191815c27ccb60d9a72790a8977556d4669d007082659a0"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.5/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "1943bab5dbb3b44fc0d9cc160b904e72e0506a3441bd21ee234fc3a171a94cb6"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.5/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0f9da6a434c4d11e106d32df2ef9d90d334c4c0873b02736cd230c2a0bda174e"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
