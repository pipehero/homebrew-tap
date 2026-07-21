# Rendered by the publish-cli workflow (placeholders filled with the release
# version + per-target sha256) and pushed to the pipehero/homebrew-tap repo.
class Pipehero < Formula
  desc "Webhook tunnel: expose localhost, inspect, replay and debug webhooks"
  homepage "https://pipehero.app"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://dl.pipehero.app/v0.1.2/pipehero-aarch64-apple-darwin.tar.gz"
      sha256 "86c27107625bdcd5f29ee0116a50f55c254acc03e8e0270129e9dbe003506291"
    end
    on_intel do
      url "https://dl.pipehero.app/v0.1.2/pipehero-x86_64-apple-darwin.tar.gz"
      sha256 "d44f978d16f64c27170de0595beb54810253bc8750ce2187a4f3f55322721abd"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.pipehero.app/v0.1.2/pipehero-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f6b588b9766d485fedfec9e22faba25ed9499a6a70c2eca1678864ba969ca45c"
    end
    on_intel do
      url "https://dl.pipehero.app/v0.1.2/pipehero-x86_64-unknown-linux-musl.tar.gz"
      sha256 "be60b44a6697ac7688e5111314c64596a7dfa1dccfbc17b094fab13198fae248"
    end
  end

  def install
    bin.install "pipehero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pipehero --version")
  end
end
