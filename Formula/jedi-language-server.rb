# Modified from flake8.rb
class JediLanguageServer < Formula
  include Language::Python::Virtualenv

  desc "A language server for Jedi!"
  homepage "https://pypi.org/project/jedi-language-server/"
  url "https://files.pythonhosted.org/packages/a8/0c/51fa7a58b0b1347151f5e78f0c5ede0d3cbc7442503c35068eeef00b4e1f/jedi-language-server-0.34.11.tar.gz"
  sha256 "1a30400455240445e22cdd9ee2c87e06b2405e088096ec2d30ebafaec5423190"
  license "MIT"
  head "https://github.com/pappasam/jedi-language-server.git"

  depends_on "python@3.10"

#   resource "mccabe" do
#     url "https://files.pythonhosted.org/packages/06/18/fa675aa501e11d6d6ca0ae73a101b2f3571a565e0f7d38e062eec18a91ee/mccabe-0.6.1.tar.gz"
#     sha256 "dd8d182285a0fe56bace7f45b5e7d1a6ebcbf524e8f3bd87eb0f125271b8831f"
#   end
# 
#   resource "pycodestyle" do
#     url "https://files.pythonhosted.org/packages/08/dc/b29daf0a202b03f57c19e7295b60d1d5e1281c45a6f5f573e41830819918/pycodestyle-2.8.0.tar.gz"
#     sha256 "eddd5847ef438ea1c7870ca7eb78a9d47ce0cdb4851a5523949f2601d0cbbe7f"
#   end
# 
#   resource "pyflakes" do
#     url "https://files.pythonhosted.org/packages/15/60/c577e54518086e98470e9088278247f4af1d39cb43bcbd731e2c307acd6a/pyflakes-2.4.0.tar.gz"
#     sha256 "05a85c2872edf37a4ed30b0cce2f6093e1d0581f8c19d7393122da7e25b2b24c"
#   end

  def install
    virtualenv_install_with_resources
  end

#   test do
#     (testpath/"test-bad.py").write <<~EOS
#       print ("Hello World!")
#     EOS
# 
#     (testpath/"test-good.py").write <<~EOS
#       print("Hello World!")
#     EOS
# 
#     assert_match "E211", shell_output("#{bin}/flake8 test-bad.py", 1)
#     assert_empty shell_output("#{bin}/flake8 test-good.py")
#   end
end
