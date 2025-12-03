class Coderguy < Formula
  include Language::Python::Virtualenv

  desc "Switchboard for Local vs Cloud AI Coding"
  homepage "https://github.com/nmingora/bridge-cli"
  url "https://github.com/nmingora/bridge-cli/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "e7a045865ec74460517b4cdf4549ee7233dbf6411901c65bf746c81433b07e50"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/coderguy", "--help"
  end
end