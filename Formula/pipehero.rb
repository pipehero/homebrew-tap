# Rendered by the publish-cli workflow (placeholders filled with the release
# version + per-target sha256) and pushed to the pipehero/homebrew-tap repo.
class Pipehero < Formula
  desc "Webhook tunnel: expose localhost, inspect, replay and debug webhooks"
  homepage "https://pipehero.app"
  version "0.1.14"

  on_macos do
    on_arm do
      url "https://dl.pipehero.app/cli/v0.1.14/pipehero-aarch64-apple-darwin.tar.gz"
      sha256 "c23a29eb7507e9d60ae3c6887e28f411762d31938028a5a6f2ab555564ee04cf"
    end
    on_intel do
      url "https://dl.pipehero.app/cli/v0.1.14/pipehero-x86_64-apple-darwin.tar.gz"
      sha256 "99d6e0a991aa92c5ee0f48ddbcd0e63f6a56449bed152f135266e8e963febafc"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pipehero.app/cli/v0.1.14/pipehero-aarch64-unknown-linux-musl.tar.gz"
      sha256 "39634161bf92d8fa2f505937f64dfab01b115ac9883ceabed10486258867eff1"
    end
    on_intel do
      url "https://dl.pipehero.app/cli/v0.1.14/pipehero-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6c51fd32d55c4236f41d307b7a9c5eee476a3e08a5ec5445033e6bbebfae6e0a"
    end
  end

  def install
    bin.install "pipehero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pipehero --version")
  end
end
