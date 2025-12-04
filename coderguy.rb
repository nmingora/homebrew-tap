class Coderguy < Formula
  include Language::Python::Virtualenv

  desc "Switchboard for Local vs Cloud AI Coding"
  homepage "https://github.com/nmingora/bridge-cli"

  url "https://github.com/nmingora/bridge-cli/archive/refs/tags/v1.0.3.tar.gz"

  sha256 "8803f76a3a3f5adb42721c71eredacted14b1f9badad"
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