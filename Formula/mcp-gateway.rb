class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.12.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.11/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "f9f057d68fe2a44a0849230961ebe41d4c9273673f9cde8dae0c70e970bd166c"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.11/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "44ff0f0bf948184f3f6ef8aaf67af641f857747134369ca2078a9072a6bb9794"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.11/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ded0322fdb57f3c7d46404caf6e98adac62c802c7ef96a8a9e317fa98bedbc7a"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
