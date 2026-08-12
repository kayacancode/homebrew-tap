class Bestmate < Formula
  desc "Bestmate CLI — your twin from the terminal (ask, ingest, connect)"
  homepage "https://bestmate.io"
  version "0.1.19"

  # Binaries are published by the cli-rs-release workflow in
  # kayacancode/askkaya to a public Cloudflare R2 bucket (the GitHub repo
  # is private, so release assets can't be fetched anonymously).
  # This file is auto-bumped by that workflow on each cli-v* release.

  on_macos do
    on_arm do
      url "https://pub-74bc021e7c564781a191839869ee2565.r2.dev/cli-v0.1.19/bestmate-darwin-arm64.tar.gz"
      sha256 "f2d417d1918d28346b6bd1894bc7cb285c8bb5231887e77c5daf63b9e16f729f"
    end
    on_intel do
      url "https://pub-74bc021e7c564781a191839869ee2565.r2.dev/cli-v0.1.19/bestmate-darwin-amd64.tar.gz"
      sha256 "66716e69d657d5e73915f338438a85b583308e6d0b61b8ce5b831cbab7ac9cf5"
    end
  end

  on_linux do
    on_arm do
      url "https://pub-74bc021e7c564781a191839869ee2565.r2.dev/cli-v0.1.19/bestmate-linux-arm64.tar.gz"
      sha256 "a16da8cc6123c99b0882148f7ad7ab9a7615a06897f6dff00d69fb6712a2bfba"
    end
    on_intel do
      url "https://pub-74bc021e7c564781a191839869ee2565.r2.dev/cli-v0.1.19/bestmate-linux-amd64.tar.gz"
      sha256 "18e46ae3ae7b62fb341d7dc1313ed792ca76ccabdec36879433247fb4db4b023"
    end
  end

  def install
    # Each tarball contains a single binary named bestmate-<os>-<arch>.
    bin.install Dir["bestmate-*"].first => "bestmate"
  end

  test do
    system bin/"bestmate", "--help"
  end
end
