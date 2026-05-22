class Peoplegraph < Formula
  desc "Query Obsidian Gmail CRM contact graph from a local or remote cache"
  homepage "https://github.com/kayacancode/obsidian-gmail-crm"
  url "https://github.com/kayacancode/obsidian-gmail-crm/releases/download/peoplegraph-v0.3.1/peoplegraph-0.3.1.tar.gz"
  sha256 "f043daba9f6375b3a9d0ba95ce540a1efde59bf0d5cbcd6670c0b13bd8ff970c"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", "crates/peoplegraph", "--root", prefix
  end

  test do
    assert_match "peoplegraph", shell_output("#{bin}/peoplegraph version")
  end
end
