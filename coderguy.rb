class Coderguy < Formula
  include Language::Python::Virtualenv

  desc "Switchboard for Local vs Cloud AI Coding"
  homepage "https://github.com/nmingora/bridge-cli"

  url "https://github.com/nmingora/bridge-cli/archive/refs/tags/v1.0.6.tar.gz"

  sha256 "f6f6075316c200f2bc5d7d51e2a499d4cd2e22e1ca430a939335ba48959fea74"
  license "MIT"

  depends_on "python@3.12"
  depends_on "ollama"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/coderguy", "--help"
  end
end