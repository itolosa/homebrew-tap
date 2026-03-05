class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.05.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.8/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "1f7007eb24c12710d01a04e7d02eafddea399598bddadee5c49d2cd2b6ea1b97"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.8/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "03588791e8db21a50833e1b1405680099f8197835e989105968561057a0d41c0"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.8/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f90e3de1b4a0d02cf6b472138c7a6ef5040c2533f2e1b9170be62f999edccd8d"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
