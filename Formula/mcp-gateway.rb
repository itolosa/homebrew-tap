class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.05.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.2/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "a9839cdf5c8f6612427f70e027ef8d0db52436c71fa95eaa88909faa32c23b5d"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.2/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "8acc69a071707cd7e5208fa0aa5d1809b18de576494097a919d096a19076fe02"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.2/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fa5b14bbbe90666e79d173f1545ad7271a2e542846f4a98fb1daeee611651bd9"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
