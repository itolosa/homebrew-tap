class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.14.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.2/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "8594730255bb67897ed1dacc3d2a7971bc241a235bc60f546acc67eb277b8caa"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.2/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "e3f3815fac1e192b1245eb4b09b15b0c250b8bdb0884b9320b9cb7bbd73356b0"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.2/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "308c0a08edf7b1220cfe26b9994cef707cfc3d30566020874ee7e854a9e5afb0"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
