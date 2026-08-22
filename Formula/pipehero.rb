# Rendered by the publish-cli workflow (placeholders filled with the release
# version + per-target sha256) and pushed to the pipehero/homebrew-tap repo.
class Pipehero < Formula
  desc "Webhook tunnel: expose localhost, inspect, replay and debug webhooks"
  homepage "https://pipehero.app"
  version "0.1.12"

  on_macos do
    on_arm do
      url "https://dl.pipehero.app/cli/v0.1.12/pipehero-aarch64-apple-darwin.tar.gz"
      sha256 "f1d30bbb9c2f51c07633e197e4709b9e945b205871b5307fd17342234530b18a"
    end
    on_intel do
      url "https://dl.pipehero.app/cli/v0.1.12/pipehero-x86_64-apple-darwin.tar.gz"
      sha256 "f8bfb269f272b0b18b5dd60c72e3b658ecf205f35b9763989c4b5c317b518012"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pipehero.app/cli/v0.1.12/pipehero-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6c554643bf78c69f1ca8062ce0545b0bf530d2f51cbb3d56d4f340891a280d2b"
    end
    on_intel do
      url "https://dl.pipehero.app/cli/v0.1.12/pipehero-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1a5aa301280db59d791bd3b8fa275e2df1e4df5e2c0559056e273105a7f09e84"
    end
  end

  def install
    bin.install "pipehero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pipehero --version")
  end
end
