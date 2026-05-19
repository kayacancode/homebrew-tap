class Peoplegraph < Formula
  desc "Query Obsidian Gmail CRM contact graph from a local or remote cache"
  homepage "https://github.com/kayacancode/obsidian-gmail-crm"
  url "https://github.com/kayacancode/obsidian-gmail-crm/releases/download/peoplegraph-v0.2.0/peoplegraph-0.2.0.tar.gz"
  sha256 "07245cd44d9ae40f662229390c431e50307de720202d95c0de2a4a4995a1d9a0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", "crates/peoplegraph", "--root", prefix
  end

  test do
    assert_match "peoplegraph", shell_output("#{bin}/peoplegraph version")
  end
end
