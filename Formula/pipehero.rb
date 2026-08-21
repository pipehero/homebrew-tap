# Rendered by the publish-cli workflow (placeholders filled with the release
# version + per-target sha256) and pushed to the pipehero/homebrew-tap repo.
class Pipehero < Formula
  desc "Webhook tunnel: expose localhost, inspect, replay and debug webhooks"
  homepage "https://pipehero.app"
  version "0.1.9"

  on_macos do
    on_arm do
      url "https://dl.pipehero.app/v0.1.9/pipehero-aarch64-apple-darwin.tar.gz"
      sha256 "9b4528e9dc53f8638cff9e237c161052f2f6f997f98c201fac99f0b1e513541e"
    end
    on_intel do
      url "https://dl.pipehero.app/v0.1.9/pipehero-x86_64-apple-darwin.tar.gz"
      sha256 "3c3418d4c8d989b2eba881eca5fb06548988e47584645ee42674edacc8ca5adf"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pipehero.app/v0.1.9/pipehero-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c430b8b09a65112e1cb1c3f22a9e2ce24ccd6f895e9c8a2e7bdab02600b17fdd"
    end
    on_intel do
      url "https://dl.pipehero.app/v0.1.9/pipehero-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4202aaf00b9debc26861df7c7371043b61a6c6a069af86b0e7f338fd95519571"
    end
  end

  def install
    bin.install "pipehero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pipehero --version")
  end
end
