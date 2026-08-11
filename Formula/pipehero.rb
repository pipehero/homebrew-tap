# Rendered by the publish-cli workflow (placeholders filled with the release
# version + per-target sha256) and pushed to the pipehero/homebrew-tap repo.
class Pipehero < Formula
  desc "Webhook tunnel: expose localhost, inspect, replay and debug webhooks"
  homepage "https://pipehero.app"
  version "0.1.7"

  on_macos do
    on_arm do
      url "https://dl.pipehero.app/v0.1.7/pipehero-aarch64-apple-darwin.tar.gz"
      sha256 "42affef214274e44696141c9bd80978bf345a51b695dbb1670cfa49dc711d372"
    end
    on_intel do
      url "https://dl.pipehero.app/v0.1.7/pipehero-x86_64-apple-darwin.tar.gz"
      sha256 "f9e9fa133cb2d0f5f0b4dc0347024054c6ca8090e45d3e2b26ba124a886133a7"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pipehero.app/v0.1.7/pipehero-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7042fc5e15fdc7edb20a96d0522316a67411c374961631d953f0cdf1d841ea3c"
    end
    on_intel do
      url "https://dl.pipehero.app/v0.1.7/pipehero-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2f6d219a58a0b490b75d1c289a4137a65bb3e712fa68a5ee083c4e714bea1328"
    end
  end

  def install
    bin.install "pipehero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pipehero --version")
  end
end
