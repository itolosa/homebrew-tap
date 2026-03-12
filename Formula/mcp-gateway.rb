class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "0855577c43c5508841b2403f446bf5e7651226b959f16e3caab5e063c0435d4a"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "0dc03004790eb69a993e41661fa8fc464a3e817c03fabadc77929b48155a3dee"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8ea0beaaa661dd213064ffea421dff1b2d2adaddf529282b4ea9826ca7bb15fe"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
