class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.06.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.7/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "dcb6ef0da1a5c7160d4f3ad306cefde707d9acb4208ce809c7797fb5f6d783da"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.7/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "dea730991c77206ec1b5e6f39d02359eb45ccb693786171c2035676293d1a95c"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.7/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f50cd9f1b4064fcfe106e32f818f72de0e2f735ca647a3a1342a1e65b45b4ced"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
