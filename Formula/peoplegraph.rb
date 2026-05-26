class Peoplegraph < Formula
  desc "Query Obsidian Gmail CRM contact graph from a local or remote cache"
  homepage "https://github.com/kayacancode/obsidian-gmail-crm"
  url "https://github.com/kayacancode/obsidian-gmail-crm/releases/download/peoplegraph-v0.3.2/peoplegraph-0.3.2.tar.gz"
  sha256 "9f0080ac741d347c9fb9f49a7ace89bdfd3ad9b181aecd59d5e84eb31aa7bb52"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", "crates/peoplegraph", "--root", prefix
  end

  test do
    assert_match "peoplegraph", shell_output("#{bin}/peoplegraph version")
  end
end
