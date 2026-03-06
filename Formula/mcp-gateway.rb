class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.06.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.4/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "b506a39b1fd9fe0aba2ddd379ee8f85cf13bc0b2c0a655eb4fae9dc9840594bb"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.4/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "d9385b2510ce1249c90f9481ddb76dec4e91b9a47dbf040475e82061b2213eba"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.06.4/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b5c9a19c64d297e35174c4edeff0bbab9bd2109e738261ea116fdffb1589f341"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
