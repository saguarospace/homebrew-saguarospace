# Modified from https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/prettier.rb
require "language/node"

class Vls < Formula
  desc "VLS (Vue Language Server) is a language server implementation compatible with Language Server Protocol."
  homepage "https://www.npmjs.com/package/vls"
  url "https://registry.npmjs.org/vls/-/vls-0.7.6.tgz"
  sha256 "f53815be8e4c9c4a4be7afbb418b5c11ba71e2408ffa32f7ab16625e2dc935ca"
  license "MIT"
  head "https://github.com/vuejs/vetur.git", branch: "master"

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
