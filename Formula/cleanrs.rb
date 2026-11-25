class Cleanrs < Formula
  desc "Storage analyzer with honest reclaimability intervals and developer cache cleanup"
  homepage "https://github.com/bencetotht/cleanrs"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bencetotht/cleanrs/releases/download/v0.2.0/cleanrs-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "04592409d74095ec07ca2b83fa6fe65d7936985c000f76ddeab62dbc5d2cf891"
    end
    on_intel do
      url "https://github.com/bencetotht/cleanrs/releases/download/v0.2.0/cleanrs-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "fff424f2f2ce8c4f3947411db2c48ff2fb556e60ef5e4aa38911018e0e28d160"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bencetotht/cleanrs/releases/download/v0.2.0/cleanrs-0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4d6cb96c1e55f1783735f66faf0e01d76f3c23b309eda38f233947a07725c0e3"
    end
    on_intel do
      url "https://github.com/bencetotht/cleanrs/releases/download/v0.2.0/cleanrs-0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "358da8bdb89298552f168025fb0672669aa592f631448511b6dc392bc8db3da4"
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
