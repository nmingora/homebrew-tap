class Coderguy < Formula
  include Language::Python::Virtualenv

  desc "Switchboard for Local vs Cloud AI Coding"
  homepage "https://github.com/nmingora/bridge-cli"

  url "https://github.com/nmingora/bridge-cli/archive/refs/tags/v1.0.4.tar.gz"

  sha256 "b8100df56e3536f039bffdf7e391c56d6cbf974acab8b3a8bf26b97e49234d34"
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