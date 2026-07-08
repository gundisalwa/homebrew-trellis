# typed: false
# frozen_string_literal: true

# Trellis — regenerated on each release by .github/workflows/update-formula.yml
# (decision-0032); don't hand-edit the version / url / sha256 lines.
class Trellis < Formula
  desc "Governance layer that supervises an agentic software-development process"
  homepage "https://kodhama.github.io/trellis/"
  version "0.2.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.24/trellis_darwin_arm64"
      sha256 "e820596a4e997346fa4682325866e74e8ea906932d390656b3b7d19dd577dbd4"
    end
    on_intel do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.24/trellis_darwin_amd64"
      sha256 "8278e7d4ee64a0e686b32844cf9c8cedfc07d8dbba5c65e040669c0ca3c7f500"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.24/trellis_linux_arm64"
      sha256 "07be2226f213e74d6c080aafd8c2bc98cb5eb8408cf1c1c41c14f111d76d47ee"
    end
    on_intel do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.24/trellis_linux_amd64"
      sha256 "a9e860b829a3dff151cb28159d99cc1936e2cc71e2377160faecdaf3c52d62c5"
    end
  end

  def install
    bin.install Dir["trellis_*"].first => "trellis"
  end

  test do
    assert_match "trellis", shell_output("#{bin}/trellis version")
  end
end
