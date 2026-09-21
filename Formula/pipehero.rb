# Rendered by the publish-cli workflow (placeholders filled with the release
# version + per-target sha256) and pushed to the pipehero/homebrew-tap repo.
class Pipehero < Formula
  desc "Webhook tunnel: expose localhost, inspect, replay and debug webhooks"
  homepage "https://pipehero.app"
  version "0.1.13"

  on_macos do
    on_arm do
      url "https://dl.pipehero.app/cli/v0.1.13/pipehero-aarch64-apple-darwin.tar.gz"
      sha256 "ca1670022e960b9af07303379b8aa098e54bed43ec31c6ed90f0d17d1e5d4efe"
    end
    on_intel do
      url "https://dl.pipehero.app/cli/v0.1.13/pipehero-x86_64-apple-darwin.tar.gz"
      sha256 "7016e0959c2418c47ef9123e2179935f08eec7dd9dd070f9a081f07a7549394a"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pipehero.app/cli/v0.1.13/pipehero-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8801acef212e9f47a1e4e414714815e4d18587e36d789859e5cbf31e4f12bcb2"
    end
    on_intel do
      url "https://dl.pipehero.app/cli/v0.1.13/pipehero-x86_64-unknown-linux-musl.tar.gz"
      sha256 "60a0abd1b8a4d7472c1583c815a02225182161e5e2cdf7671c1467fa67fad508"
    end
  end

  def install
    bin.install "pipehero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pipehero --version")
  end
end
