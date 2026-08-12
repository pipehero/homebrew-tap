# Rendered by the publish-cli workflow (placeholders filled with the release
# version + per-target sha256) and pushed to the pipehero/homebrew-tap repo.
class Pipehero < Formula
  desc "Webhook tunnel: expose localhost, inspect, replay and debug webhooks"
  homepage "https://pipehero.app"
  version "0.1.8"

  on_macos do
    on_arm do
      url "https://dl.pipehero.app/v0.1.8/pipehero-aarch64-apple-darwin.tar.gz"
      sha256 "ba2c6dc008225a09185f82098a822c00aed7d6d230f18ba0cf9c0b6f830a4e94"
    end
    on_intel do
      url "https://dl.pipehero.app/v0.1.8/pipehero-x86_64-apple-darwin.tar.gz"
      sha256 "9afef42f8deb54c83ee9975506fe2007a5b687bb1b0087b7fbf848e0225a02cb"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pipehero.app/v0.1.8/pipehero-aarch64-unknown-linux-musl.tar.gz"
      sha256 "041f34980f3a3aa3000de7d8cb97e4d68b4218742b4323091ff218bb63e0122c"
    end
    on_intel do
      url "https://dl.pipehero.app/v0.1.8/pipehero-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d928cd9c044ea1ce897b00c65924e8dd724064ccba654188b770179a86219c30"
    end
  end

  def install
    bin.install "pipehero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pipehero --version")
  end
end
