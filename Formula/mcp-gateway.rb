class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.05.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.13/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "bce4af44eacfe5594d4acefe2268f6902f156f26c1b302ea2381d26afddcb20e"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.13/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "efffb2b2e26b02e4162a52f3c989aec7b01337545d8583df1d38fde8d887c2e4"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.13/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c8220a6122db916ec5e8793497457d7b6fbeb01b77820ca9d9da66d01622b400"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
