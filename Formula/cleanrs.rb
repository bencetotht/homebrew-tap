class Cleanrs < Formula
  desc "Storage analyzer with honest reclaimability intervals and developer cache cleanup"
  homepage "https://github.com/bencetotht/cleanrs"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bencetotht/cleanrs/releases/download/v0.1.0/cleanrs-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "75db994b60cf88ca19ae5f9e4b8c2556af1f3a6e5ff3eb039a5460d745a90a8f"
    end
    on_intel do
      url "https://github.com/bencetotht/cleanrs/releases/download/v0.1.0/cleanrs-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "4d9c0b94501605efd84f9cbf5d437036bca4f7492d4137a6c9baede66a01de2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bencetotht/cleanrs/releases/download/v0.1.0/cleanrs-0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f4f7e5ba8e91e36ac36ac39678f5922859ce189d01f1067bd6e4a49de7161f02"
    end
    on_intel do
      url "https://github.com/bencetotht/cleanrs/releases/download/v0.1.0/cleanrs-0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3ab7ee9dd1a3d99a6f3100cf52ba8cf41f4e4fce03255d7d2a84778728ac0db5"
    end
  end

  def install
    bin.install "cleanrs"
    man1.install "man/cleanrs.1"
    bash_completion.install "completions/cleanrs.bash" => "cleanrs"
    zsh_completion.install "completions/_cleanrs"
    fish_completion.install "completions/cleanrs.fish"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cleanrs --version")
  end
end
