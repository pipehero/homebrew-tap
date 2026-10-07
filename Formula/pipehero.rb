# Rendered by the publish-cli workflow (placeholders filled with the release
# version + per-target sha256) and pushed to the pipehero/homebrew-tap repo.
class Pipehero < Formula
  desc "Webhook tunnel: expose localhost, inspect, replay and debug webhooks"
  homepage "https://pipehero.app"
  version "0.1.16"

  on_macos do
    on_arm do
      url "https://dl.pipehero.app/cli/v0.1.16/pipehero-aarch64-apple-darwin.tar.gz"
      sha256 "7f532c983d0a074a83104eb32eadf8fae7093ef2ef929d00a2d7af679076ecc8"
    end
    on_intel do
      url "https://dl.pipehero.app/cli/v0.1.16/pipehero-x86_64-apple-darwin.tar.gz"
      sha256 "fd733cca2ba49d0f9aac2bc0d5f7129e88cc002a76abc487698f16f160567999"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pipehero.app/cli/v0.1.16/pipehero-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aa191e70a07718347b0498322be60cdaa89dbf027f6b3d6fa326e61971bebdb4"
    end
    on_intel do
      url "https://dl.pipehero.app/cli/v0.1.16/pipehero-x86_64-unknown-linux-musl.tar.gz"
      sha256 "75537c7a2f1dd671f93de3e3cd64d8402bd1bfab9809ff4e5371df70c3a3bf8a"
    end
  end

  def install
    bin.install "pipehero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pipehero --version")
  end
end
