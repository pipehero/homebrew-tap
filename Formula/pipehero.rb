# Rendered by the publish-cli workflow (placeholders filled with the release
# version + per-target sha256) and pushed to the pipehero/homebrew-tap repo.
class Pipehero < Formula
  desc "Webhook tunnel: expose localhost, inspect, replay and debug webhooks"
  homepage "https://pipehero.app"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://dl.pipehero.app/v0.1.3/pipehero-aarch64-apple-darwin.tar.gz"
      sha256 "6267e5abb759d86bbe77de686783958edc5bf015c32c12c8dcac1c9b630720b1"
    end
    on_intel do
      url "https://dl.pipehero.app/v0.1.3/pipehero-x86_64-apple-darwin.tar.gz"
      sha256 "ad107504828eef50eb00487daf8d0201469934d9d50c53aa233225c58789945d"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pipehero.app/v0.1.3/pipehero-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b1176853814ad4f6d45dd3febf93f907443a3f979cd287a1632ccfed4ef92b1a"
    end
    on_intel do
      url "https://dl.pipehero.app/v0.1.3/pipehero-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f25d34f4b120700a0a17c0f9c2a62fbb1e1b744a0bc9d38e586a36a5cf8d83bc"
    end
  end

  def install
    bin.install "pipehero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pipehero --version")
  end
end
