# Rendered by the publish-cli workflow (placeholders filled with the release
# version + per-target sha256) and pushed to the pipehero/homebrew-tap repo.
class Pipehero < Formula
  desc "Webhook tunnel: expose localhost, inspect, replay and debug webhooks"
  homepage "https://pipehero.app"
  version "0.1.17"

  on_macos do
    on_arm do
      url "https://dl.pipehero.app/cli/v0.1.17/pipehero-aarch64-apple-darwin.tar.gz"
      sha256 "743a830f4eadd001032085d97ef3f1da15858afb84e09d7910354f8d2eb14726"
    end
    on_intel do
      url "https://dl.pipehero.app/cli/v0.1.17/pipehero-x86_64-apple-darwin.tar.gz"
      sha256 "6275eeff04fb65e02574ae65c931a09870533049707e402caff1ba227ce5337d"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pipehero.app/cli/v0.1.17/pipehero-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b2859f49a357127c130e4b81aa8675948d9d362011d7e81b86acd0d073e39b48"
    end
    on_intel do
      url "https://dl.pipehero.app/cli/v0.1.17/pipehero-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8f5caba7ead753bb9a29889ff1301570ca88d8181d5a293faaf2eb56ba553f18"
    end
  end

  def install
    bin.install "pipehero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pipehero --version")
  end
end
