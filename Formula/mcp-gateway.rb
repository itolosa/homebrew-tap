class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.12.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.4/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "8e44b6781d6174e9122fb38a40db855d391d91eed39ba3c51c56403d0f258373"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.4/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "cc64bf725f92846fe3fb4e67bb74fd48f0a66a1b8f7a3076af12e629738c38a6"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.4/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3194f92074f77325c6ea47177179c067bdded6b2e1b8847b12379159cc3df5bb"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
