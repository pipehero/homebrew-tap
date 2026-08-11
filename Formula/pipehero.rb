# Rendered by the publish-cli workflow (placeholders filled with the release
# version + per-target sha256) and pushed to the pipehero/homebrew-tap repo.
class Pipehero < Formula
  desc "Webhook tunnel: expose localhost, inspect, replay and debug webhooks"
  homepage "https://pipehero.app"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://dl.pipehero.app/v0.1.4/pipehero-aarch64-apple-darwin.tar.gz"
      sha256 "9adce1cf71c46859265cc17a445af31f610757a9db4d57f177886b2e510cf12e"
    end
    on_intel do
      url "https://dl.pipehero.app/v0.1.4/pipehero-x86_64-apple-darwin.tar.gz"
      sha256 "4aed71fee3a06150f3e4fbd3c46ad695f9fe62a94b74d41ee0f6eea92dd6f9a3"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pipehero.app/v0.1.4/pipehero-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eff56c2889bcdd96e81c5c6d2e33861e9b7f15d4182bfd73985cba207ca36304"
    end
    on_intel do
      url "https://dl.pipehero.app/v0.1.4/pipehero-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cb3bf1674071bd27be34fdca7802c90e950ccb213925e0487ea44234e17edcd3"
    end
  end

  def install
    bin.install "pipehero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pipehero --version")
  end
end
