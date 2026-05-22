class Peoplegraph < Formula
  desc "Query Obsidian Gmail CRM contact graph from a local or remote cache"
  homepage "https://github.com/kayacancode/obsidian-gmail-crm"
  url "https://github.com/kayacancode/obsidian-gmail-crm/releases/download/peoplegraph-v0.3.0/peoplegraph-0.3.0.tar.gz"
  sha256 "389efb28e8815b3099fca9e089c29807afc25e0c5281d75468e624d0eb709a86"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", "crates/peoplegraph", "--root", prefix
  end

  test do
    assert_match "peoplegraph", shell_output("#{bin}/peoplegraph version")
  end
end
