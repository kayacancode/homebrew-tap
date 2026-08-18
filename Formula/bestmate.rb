class Bestmate < Formula
  desc "Bestmate CLI — your twin from the terminal (ask, ingest, connect)"
  homepage "https://bestmate.io"
  version "0.4.0"

  # Binaries are published by the cli-rs-release workflow in
  # kayacancode/askkaya to a public Cloudflare R2 bucket (the GitHub repo
  # is private, so release assets can't be fetched anonymously).
  # This file is auto-bumped by that workflow on each cli-v* release.

  on_macos do
    on_arm do
      url "https://pub-74bc021e7c564781a191839869ee2565.r2.dev/cli-v0.4.0/bestmate-darwin-arm64.tar.gz"
      sha256 "9b086bb23ef80116d8ae7578198c0fdd68e8e1bdd33900e6a378f4203dbedab6"
    end
    on_intel do
      url "https://pub-74bc021e7c564781a191839869ee2565.r2.dev/cli-v0.4.0/bestmate-darwin-amd64.tar.gz"
      sha256 "419abecb8526bf55465ca8c10904048edac13667a96eec31c82956301e076c7c"
    end
  end

  on_linux do
    on_arm do
      url "https://pub-74bc021e7c564781a191839869ee2565.r2.dev/cli-v0.4.0/bestmate-linux-arm64.tar.gz"
      sha256 "d171cce5415826d75140e4bde9640f502f87a74fa5cb9d05c4229cf9e10519bb"
    end
    on_intel do
      url "https://pub-74bc021e7c564781a191839869ee2565.r2.dev/cli-v0.4.0/bestmate-linux-amd64.tar.gz"
      sha256 "352b4bb8c16c24079456357f1c04288a8f7579e2ee901a7dfdbc4566196ef2b0"
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
