# typed: false
# frozen_string_literal: true

# Trellis — regenerated on each release by .github/workflows/update-formula.yml
# (decision-0032); don't hand-edit the version / url / sha256 lines.
class Trellis < Formula
  desc "Governance layer that supervises an agentic software-development process"
  homepage "https://kodhama.github.io/trellis/"
  version "0.2.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.28/trellis_darwin_arm64"
      sha256 "c99a8065425a01d3d53b80c2196eaeeafaa705a2012430c5152fc5825db19f77"
    end
    on_intel do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.28/trellis_darwin_amd64"
      sha256 "eca4c8c06906998d7ac79b6d8e391f8b25c7012bd8fa567a90553a0f20e99801"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.28/trellis_linux_arm64"
      sha256 "7de8ddbc818b92c25daea2f01e0491d71bcdf3a1e39eda98edbdec63bcb6e0c2"
    end
    on_intel do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.28/trellis_linux_amd64"
      sha256 "439d604d3690638b99c84e8160c8c4af814e6243801ff15f979ce9d16f975785"
    end
  end

  def install
    bin.install Dir["trellis_*"].first => "trellis"
  end

  test do
    assert_match "trellis", shell_output("#{bin}/trellis version")
  end
end
