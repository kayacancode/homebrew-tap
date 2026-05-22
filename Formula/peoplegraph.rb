class Peoplegraph < Formula
  desc "Query Obsidian Gmail CRM contact graph from a local or remote cache"
  homepage "https://github.com/kayacancode/obsidian-gmail-crm"
  url "https://github.com/kayacancode/obsidian-gmail-crm/releases/download/peoplegraph-v0.2.1/peoplegraph-0.2.1.tar.gz"
  sha256 "7cc2fa11c92374e803a04605fcf7fb761814cce6d59789587f6246e252a609ad"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", "crates/peoplegraph", "--root", prefix
  end

  test do
    assert_match "peoplegraph", shell_output("#{bin}/peoplegraph version")
  end
end
