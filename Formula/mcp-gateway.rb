class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.05.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.1/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "a134d55c3ae2bd685a88ef0f2b0f66c8f72e612546bba8dca6dbbee1483fc834"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.1/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "b360650ee51addb9ae3ca1772abdf9e533591547e264af215d7907414ab7070d"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.1/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5c2ccf3e593b87d2df50a013e7a17588e6cd35e91227323178a5d182fab30f8a"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
