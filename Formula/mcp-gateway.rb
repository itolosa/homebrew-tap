class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.13/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "e724a963d531f0ac676452072cfd86d6a3f584471716ae49a9f65e4ceaeac227"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.13/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "55eeb398559a0432631359265976338722275acb15fed810fcfbdbf6330a5a92"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.13/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fc00835182bf7ac378012390582775e11fc202417d9aece231f8aa1ca4931310"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
