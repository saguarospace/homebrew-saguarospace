require "language/node"

class MarkmapCli < Formula
  desc "Create markmaps from CLI"
  homepage "https://www.npmjs.com/package/markmap-cli"
  url "https://registry.npmjs.org/markmap-cli/-/markmap-cli-0.5.4.tgz"
  sha256 "5acbac6dfb19d787101f3e351e30c03e5b3df80dbc2dee0b86899bead5366014"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
