class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.06.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.6/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "e1dd9bdeff53bbcad45dd08b1b7931a06c76620be711dfc22cee964a8aef52ed"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.6/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "fbd2b08c8a38aaf7ad49cb4fa8a35ec2516b8615653c1d47fa2a6ebbaa5fbbe0"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.6/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4fecc665d0deecec3cd16b9e2a79bb184fb683c8c466c654e0d196a947b2967d"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
