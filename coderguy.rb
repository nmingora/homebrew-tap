class Coderguy < Formula
  include Language::Python::Virtualenv

  desc "Switchboard for Local vs Cloud AI Coding"
  homepage "https://github.com/nmingora/bridge-cli"

  url "https://github.com/nmingora/bridge-cli/archive/refs/tags/v1.0.5.tar.gz"

  sha256 "e16ecc6c99f40343502b904ce611ddd5ecf8b7914d1554f83b9daf2ce8304cf0"
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