class Kassios < Formula
  desc "Host-side tools for KassiOS: kassios-agent, kassios-mutants, kassios-lint"
  homepage "https://github.com/VadimToptunov/KassiOS"
  url "https://github.com/VadimToptunov/KassiOS/releases/download/1.10.0/kassios-1.10.0-macos.zip"
  sha256 "674b9427930ff6b1e3341df4baab6a09f3b6d535d2c0eba65db4a484c1f59749"
  license "MIT"

  depends_on :macos

  def install
    bin.install Dir["bin/*"]
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/kassios version").strip
  end
end
