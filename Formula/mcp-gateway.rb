class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.06.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.8/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "a933dfa1165cc35ddc4f8718cea1b841c7b14d6687d53b0a1a0adcd04e2db7ed"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.8/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "8cb54ebac2e4c57bbc00eeb9d78ed241fd7eeac58251683a3bdc2707e978f620"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.8/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b53310175915987a916497a19e7d5f9f44cc667fac9c022dff42ede86ce9766e"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
