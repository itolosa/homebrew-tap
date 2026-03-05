class McpGateway < Formula
  desc "Security proxy for Model Context Protocol (MCP) servers"
  homepage "https://github.com/itolosa/mcp-gateway"
  version "2026.03.05.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.7/mcp-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "570f786f0cc3115ccafbc896c09c419f3501367c85cba94cec1a2ac6ddb699ba"
    else
      url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.7/mcp-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "ae9680177ad3105fb72eeaa845b0b1403cc9aeca4b7ac287f9a6061e9355063d"
    end
  end

  on_linux do
    url "https://github.com/itolosa/mcp-gateway/releases/download/2026.03.05.7/mcp-gateway-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f8e39cdc232b5e6f0611a32e8801e0973d1c61d90c1bfaf545aee57a9396eedf"
  end

  def install
    bin.install "mcp-gateway"
  end

  test do
    assert_match "mcp-gateway", shell_output("#{bin}/mcp-gateway --help")
  end
end
