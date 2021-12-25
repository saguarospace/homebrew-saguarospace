# Modified from https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/prettier.rb
require "language/node"

class YamlLanguageServer < Formula
  desc "YAML language server."
  homepage "https://www.npmjs.com/package/yaml-language-server"
  url "https://registry.npmjs.org/yaml-language-server/-/yaml-language-server-1.2.2.tgz"
  sha256 "c5413137ec0ebf79a4368fd97611f2ae6d08a0c4ee2d6efb28763982a7e05e2a"
  license "MIT"
  head "https://github.com/redhat-developer/yaml-language-server.git", branch: "main"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
