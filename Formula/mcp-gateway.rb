class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.14.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.4/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "8b0cc3c9d54392da394613669dfcdb6bfbca948a22cfd3423d6a781e4ab0fe4b"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.4/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "c51e10a62979165d3f2968e4e68aeac3828a37aab4fb79753354d24abbea6349"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.4/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "011ccdefbbc4588e1508e782f482f91ec84b82559571daa1d89234fe85cbe912"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
