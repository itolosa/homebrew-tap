class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.14.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.7/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "4c222f84abb08be42852d01a1ef70753501d3b1888b8d5da8f68ea5c5def0919"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.7/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "c4c715e6867eec0baf43c095dbf7c90ac5a70b787f6035e638344f775ccc5b67"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.7/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7296e9110f51e78e3df0041ddc80c5ce979893a5d6436510e912947fca628bfd"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
