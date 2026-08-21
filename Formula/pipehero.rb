# Rendered by the publish-cli workflow (placeholders filled with the release
# version + per-target sha256) and pushed to the pipehero/homebrew-tap repo.
class Pipehero < Formula
  desc "Webhook tunnel: expose localhost, inspect, replay and debug webhooks"
  homepage "https://pipehero.app"
  version "0.1.11"

  on_macos do
    on_arm do
      url "https://dl.pipehero.app/v0.1.11/pipehero-aarch64-apple-darwin.tar.gz"
      sha256 "18b18bd879171de3ea8ae993e9dab6c0c5f1ce3036905d3edcd7c8cdc757d337"
    end
    on_intel do
      url "https://dl.pipehero.app/v0.1.11/pipehero-x86_64-apple-darwin.tar.gz"
      sha256 "4dfa5cfd26ac2b4e317dc20da62739e133414f563518017bc0be2ffe0efc365f"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pipehero.app/v0.1.11/pipehero-aarch64-unknown-linux-musl.tar.gz"
      sha256 "44f87ae91bf7edc121c75bcb004c7a18e52e7c87ca3bbf5f4f1b91d90208bc7f"
    end
    on_intel do
      url "https://dl.pipehero.app/v0.1.11/pipehero-x86_64-unknown-linux-musl.tar.gz"
      sha256 "71ad2319e4942d57e5717a6725704f1ba60b14940f60bc253303a9a8c36b0481"
    end
  end

  def install
    bin.install "pipehero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pipehero --version")
  end
end
