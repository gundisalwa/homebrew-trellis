# typed: false
# frozen_string_literal: true

# Trellis — a governance layer that supervises an agentic software-development process.
# The version / url / sha256 lines below are REGENERATED on each release by
# .github/workflows/update-formula.yml (decision-0032); don't hand-edit them.
class Trellis < Formula
  desc "Governance layer that supervises an agentic software-development process"
  homepage "https://gundisalwa.github.io/trellis/"
  version "0.2.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.12/trellis_darwin_arm64"
      sha256 "460bb37469e075608c9efbcded144ffeb2cd655135428ddf451c22e90afbb69c"
    end
    on_intel do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.12/trellis_darwin_amd64"
      sha256 "ec9f2bebd084260d7b6ef31bace975c45d174683eea16aa8ceb14d015742a519"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.12/trellis_linux_arm64"
      sha256 "eaf12a1f8acec68e4ad320a239555ee120b262753b254beec5bb1ac153c9980c"
    end
    on_intel do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.12/trellis_linux_amd64"
      sha256 "d08d9a34cca18f68487465f9b1ace01559f11782cf630d15369b86639ef12230"
    end
  end

  def install
    bin.install Dir["trellis_*"].first => "trellis"
  end

  test do
    assert_match "trellis", shell_output("#{bin}/trellis version")
  end
end
