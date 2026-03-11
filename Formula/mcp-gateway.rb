class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.11/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "3d122820139f328a95e52e20f092640b6f8c2cd5137eedeb08cfc18d84c731f6"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.11/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "0505f401fe17e0539a53efbb1ba14698ed2c565a51345f99c9a7705a7a82b309"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.11/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ce62a650be6d9c04f18c5e9f1802de56a52c98094a62ef440d90c40fa969f61c"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
