class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.06.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.5/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "d77e3ea9dd5985638b6ff46b507863c65d1610c7fbdd8c545cfaf6410d4fce3b"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.5/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "211c4cecf788f3c2c1169abfc0d0442b192004c5d5889421c327b397fd35fcc9"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.5/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "53b2164d911ccae06dbd720c11cadc0dab2cacbd0e73a743a83c81e61fa55009"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
