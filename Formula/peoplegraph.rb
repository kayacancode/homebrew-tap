class Peoplegraph < Formula
  desc "Query Obsidian Gmail CRM contact graph from a local cache"
  homepage "https://github.com/kayacancode/obsidian-gmail-crm"
  url "https://github.com/kayacancode/obsidian-gmail-crm/releases/download/peoplegraph-v0.1.0/peoplegraph-0.1.0.tar.gz"
  sha256 "827d22bd8da8b0e68c7f00885f260d6c42a38c39648f898c97cbe911d7db83a9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", "crates/peoplegraph", "--root", prefix
  end

  test do
    assert_match "peoplegraph", shell_output("#{bin}/peoplegraph version")
  end
end
