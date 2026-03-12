class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.12.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.3/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "f5de6ae5246c7cbc163c21bfb0c63edbf2000146a8a1c3013c209f4e01dd41dc"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.3/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "47368a65806bbca0291a7ea0b0eb4dbb4b7b0e09074d77f45721d08500b12eb7"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.3/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b0a8c57c1af85551754055c47abc3eb512be98a44cd35fd02cfeadfce306e44a"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
