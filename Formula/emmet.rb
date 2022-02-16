require "language/node"

class Emmet < Formula
  desc "Emmet — the essential toolkit for web-developers"
  homepage "https://www.npmjs.com/package/vls"
  url "https://registry.npmjs.org/emmet/-/emmet-2.3.5.tgz"
  sha256 "7b079de8949137b33aea777cad36a3cd8e62b4e6c673193251180ecd8adc9da3"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
