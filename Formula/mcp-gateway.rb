class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.09.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.09.1/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "355ab975951daa417c57965fc35a3ca373943b22d6a341386edcdae79defcbe8"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.09.1/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "dea8c5deb2a062b12c7727c845e488aa65e8d04fb09338d5530a7c29e0cdb756"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.09.1/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4c702067235e52ff362e45ad19bfdfeb3a007d8b3a15d9115cf3b9b465e93d74"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
