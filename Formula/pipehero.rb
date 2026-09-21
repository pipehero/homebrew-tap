# Rendered by the publish-cli workflow (placeholders filled with the release
# version + per-target sha256) and pushed to the pipehero/homebrew-tap repo.
class Pipehero < Formula
  desc "Webhook tunnel: expose localhost, inspect, replay and debug webhooks"
  homepage "https://pipehero.app"
  version "0.1.15"

  on_macos do
    on_arm do
      url "https://dl.pipehero.app/cli/v0.1.15/pipehero-aarch64-apple-darwin.tar.gz"
      sha256 "ba90e701420afb6cb867cfa00c84fd06e112d14f9089c8efae5f13f4cf538ed6"
    end
    on_intel do
      url "https://dl.pipehero.app/cli/v0.1.15/pipehero-x86_64-apple-darwin.tar.gz"
      sha256 "8041aca1100e68269da4b089d412d6cb446197ea49a3606e920b87bf09afa6b5"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pipehero.app/cli/v0.1.15/pipehero-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a924fa30d2fd45b344d947de11e94a3006800b7a6a051bf7b0b8912998a5e8a1"
    end
    on_intel do
      url "https://dl.pipehero.app/cli/v0.1.15/pipehero-x86_64-unknown-linux-musl.tar.gz"
      sha256 "568848fd52e6b7604e154aed6ba8dc4c5b93c416b8b3cf014bf7b053f025bd0a"
    end
  end

  def install
    bin.install "pipehero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pipehero --version")
  end
end
