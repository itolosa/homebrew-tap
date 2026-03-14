class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.14.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.5/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "b3000c8299b620efbf1ecafa7af0ccc72e711a2a694548d0fa7c511b138f440c"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.5/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "912d2796e75da8b38ed7b155b81c19f8b840fdfc768aa10a2a38d3634717f345"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.14.5/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fac28fbb6930b1b74981c0df9a8a037a44dceff7fdcc0c9a0ab4feae32dfe435"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
