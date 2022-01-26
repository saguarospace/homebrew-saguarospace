require "language/node"

class Localtunnel < Formula
  desc "Expose localhost to the world"
  homepage "https://www.npmjs.com/package/localtunnel"
  url "https://registry.npmjs.org/localtunnel/-/localtunnel-2.0.2.tgz"
  sha256 "6fb76f0ac6b92989669a5b7bb519361e07301965ea1f5a04d813ed59ab2e0c34"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
