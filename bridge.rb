class Bridge < Formula
  include Language::Python::Virtualenv

  desc "Switchboard for Local vs Cloud AI Coding"
  homepage "https://github.com/nmingora/bridge-cli"
  url "https://github.com/nmingora/bridge-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "63ccfc3841242b4ce96046e88e6be64f682fc53e1be9419cc2080d19b463a912"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/bridge", "--help"
  end
end