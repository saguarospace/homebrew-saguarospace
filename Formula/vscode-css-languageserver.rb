# Modified from https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/prettier.rb
require "language/node"

class VscodeCssLanguageserver < Formula
  desc "CSS/LESS/SASS Language Server for VScode (and other tools)"
  homepage "https://www.npmjs.com/package/@nevmn/vscode-css-languageserver"
  url "https://registry.npmjs.org/@nevmn/vscode-css-languageserver/-/vscode-css-languageserver-1.62.1.tgz"
  sha256 "9c1762225d417c0ea37ed98157ff6956d73486dc377b8abc8dcc575e4015b345"
  license "MIT"
#   head "https://github.com/vuejs/vetur.git", branch: "master"

#   bottle do
#     sha256 cellar: :any_skip_relocation, arm64_monterey: "8ff333e5a85072c16ffc3e45c547ee03adbd2db1ccfcad6530e676cdde8829f9"
#     sha256 cellar: :any_skip_relocation, arm64_big_sur:  "8ff333e5a85072c16ffc3e45c547ee03adbd2db1ccfcad6530e676cdde8829f9"
#     sha256 cellar: :any_skip_relocation, monterey:       "bf7b106b0628675290c36da366cc9c4caf1d1883f66634410520f2fefd58ac82"
#     sha256 cellar: :any_skip_relocation, big_sur:        "bf7b106b0628675290c36da366cc9c4caf1d1883f66634410520f2fefd58ac82"
#     sha256 cellar: :any_skip_relocation, catalina:       "bf7b106b0628675290c36da366cc9c4caf1d1883f66634410520f2fefd58ac82"
#     sha256 cellar: :any_skip_relocation, mojave:         "bf7b106b0628675290c36da366cc9c4caf1d1883f66634410520f2fefd58ac82"
#     sha256 cellar: :any_skip_relocation, x86_64_linux:   "8ff333e5a85072c16ffc3e45c547ee03adbd2db1ccfcad6530e676cdde8829f9"
#   end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

#   test do
#     (testpath/"test.js").write("const arr = [1,2];")
#     output = shell_output("#{bin}/prettier test.js")
#     assert_equal "const arr = [1, 2];", output.chomp
#   end
end
