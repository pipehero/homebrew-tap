# Rendered by the publish-cli workflow (placeholders filled with the release
# version + per-target sha256) and pushed to the pipehero/homebrew-tap repo.
class Pipehero < Formula
  desc "Webhook tunnel: expose localhost, inspect, replay and debug webhooks"
  homepage "https://pipehero.app"
  version "0.1.10"

  on_macos do
    on_arm do
      url "https://dl.pipehero.app/v0.1.10/pipehero-aarch64-apple-darwin.tar.gz"
      sha256 "153fde28d83af3c678e2c73c86c0160ce99ed03d926f541547ef5ee76d00b960"
    end
    on_intel do
      url "https://dl.pipehero.app/v0.1.10/pipehero-x86_64-apple-darwin.tar.gz"
      sha256 "ea13ed0a3eb0b9e5f00b477b03595a7330194c78e5187bd34eec9f9b8ec4fc3d"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pipehero.app/v0.1.10/pipehero-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dfc7443360dd30f0f4a17e96fec647982cdc0fad1437da7fd3ac2fd9ff2e2d46"
    end
    on_intel do
      url "https://dl.pipehero.app/v0.1.10/pipehero-x86_64-unknown-linux-musl.tar.gz"
      sha256 "564a857f7d9b11ba6c8875263909552b2219ec4c1cfb80318e2fbdbc2c861c78"
    end
  end

  def install
    bin.install "pipehero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pipehero --version")
  end
end
