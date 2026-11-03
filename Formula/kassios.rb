class Kassios < Formula
  desc "Host-side tools for KassiOS: kassios-agent, kassios-mutants, kassios-lint"
  homepage "https://github.com/VadimToptunov/KassiOS"
  url "https://github.com/VadimToptunov/KassiOS/releases/download/1.10.1/kassios-1.10.1-macos.zip"
  sha256 "ba8c148482d37c48243e28ad7173822600363bf88a143d7be63f365cb3198618"
  license "MIT"

  depends_on :macos

  def install
    bin.install Dir["bin/*"]
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/kassios version").strip
  end
end
