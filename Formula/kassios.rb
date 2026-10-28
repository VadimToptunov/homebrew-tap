class Kassios < Formula
  desc "Host-side tools for KassiOS: kassios-agent, kassios-mutants, kassios-lint"
  homepage "https://github.com/VadimToptunov/KassiOS"
  url "https://github.com/VadimToptunov/KassiOS/releases/download/1.10.0/kassios-1.10.0-macos.zip"
  sha256 "5ed5a235207c5a4cc044134b0ac532803ef627d8413b0dd6829b021b48c6a8d4"
  license "MIT"

  depends_on :macos

  def install
    bin.install Dir["bin/*"]
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/kassios version").strip
  end
end
