# Rendered by the publish-cli workflow (placeholders filled with the release
# version + per-target sha256) and pushed to the pipehero/homebrew-tap repo.
class Pipehero < Formula
  desc "Webhook tunnel: expose localhost, inspect, replay and debug webhooks"
  homepage "https://pipehero.app"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://dl.pipehero.app/v0.1.5/pipehero-aarch64-apple-darwin.tar.gz"
      sha256 "d47ab666f781588fd1ca88b5cd64e541a5ce330b8265403210dfd32cc6b7a84c"
    end
    on_intel do
      url "https://dl.pipehero.app/v0.1.5/pipehero-x86_64-apple-darwin.tar.gz"
      sha256 "b3ccb76cf4dff59c2e9ee1ba5ac03018d7743a259e13f721853ed04087fe1629"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pipehero.app/v0.1.5/pipehero-aarch64-unknown-linux-musl.tar.gz"
      sha256 "962cdcf74a4e2aa275daab48c989ff37bd9bf1923798d343e62eaa564dbf19b8"
    end
    on_intel do
      url "https://dl.pipehero.app/v0.1.5/pipehero-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cfc031883b9bc3e16bb11cdb47ef13a855552b7dd44f02eac9e63d2ee584ba22"
    end
  end

  def install
    bin.install "pipehero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pipehero --version")
  end
end
