# typed: false
# frozen_string_literal: true

# Trellis — regenerated on each release by .github/workflows/update-formula.yml
# (decision-0032); don't hand-edit the version / url / sha256 lines.
class Trellis < Formula
  desc "Governance layer that supervises an agentic software-development process"
  homepage "https://gundisalwa.github.io/trellis/"
  version "0.2.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.21/trellis_darwin_arm64"
      sha256 "82191198e497cd12970ecf8bf6a97315c4ade51f26d1b792de5a29f06156fb8e"
    end
    on_intel do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.21/trellis_darwin_amd64"
      sha256 "305df4b2f649833ceb3ad06ca5603382c46810fda6fad045d6f59ceed625fe4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.21/trellis_linux_arm64"
      sha256 "57cef20d338bac0598b38df710da3933f2283a842432b2f95c422a6119a79698"
    end
    on_intel do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.21/trellis_linux_amd64"
      sha256 "82dfab75d8fef8f438a84d0641967c5524b1eeb8665c6020369e11af9b1386ae"
    end
  end

  def install
    bin.install Dir["trellis_*"].first => "trellis"
  end

  test do
    assert_match "trellis", shell_output("#{bin}/trellis version")
  end
end
