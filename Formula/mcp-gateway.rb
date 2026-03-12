class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.12.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.7/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "e43c6e956d373121aee687bc989ef228e8865d596103c205afd8ec7ec40fce24"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.7/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "c0a3aa2e6539a98272a06f496ca9a7e7c148c3719aebf36ac209b79e63058760"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.7/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "33e455d28d2f8b6358ae70952b8077eb832894304ef704f0ac04b71ffbb1907f"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
