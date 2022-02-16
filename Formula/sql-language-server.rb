require "language/node"

class SqlLanguageServer < Formula
  desc "SQL Language Server"
  homepage "https://github.com/joe-re/sql-language-server#readme"
  url "https://registry.npmjs.org/sql-language-server/-/sql-language-server-1.2.0.tgz"
  sha256 "67d139d93c1674f6f7db5ba5a242e7394e7a3e1d4de28c3f86d0e8d43581af9e"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
