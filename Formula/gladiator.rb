# Homebrew formula for Gladiator. Lives in the tap repo `kayacancode/homebrew-tap`, so users run:
#   brew install kayacancode/tap/gladiator
# The sha256 is filled in at release time (see HOMEBREW.md).
class Gladiator < Formula
  desc "Transparency-first CLI watchdog for AI agent fleets"
  homepage "https://github.com/kayacancode/gladiator"
  url "https://github.com/kayacancode/gladiator/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7d5e8469ba54ecc59a9bd90bc624f8520cf3ba93b2593884f9b7bbefb458d4d3"
  license "MIT"
  head "https://github.com/kayacancode/gladiator.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "gladiator 0.1.0", shell_output("#{bin}/gladiator --version")
  end
end
