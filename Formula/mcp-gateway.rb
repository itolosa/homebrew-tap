class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.12.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.10/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "910b63f9e7f262163963000e0b90ee8873f5b48d2087fb92bda335223b09ac91"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.10/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "eb8e991e51747592c2a51206e084998b6200c753a90b590b14479aba83af903d"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.12.10/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "238193074057716b698e20aee5bb859e159acf30cf47aecc8c71fe998c15fe60"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
