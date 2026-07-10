# typed: false
# frozen_string_literal: true

# Trellis — regenerated on each release by .github/workflows/update-formula.yml
# (decision-0032); don't hand-edit the version / url / sha256 lines.
class Trellis < Formula
  desc "Governance layer that supervises an agentic software-development process"
  homepage "https://kodhama.github.io/trellis/"
  version "0.2.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.30/trellis_darwin_arm64"
      sha256 "d590a014cd82e548ebffebd50e7eda30f89f43e1803f1c5b0dcc0f06da5f2039"
    end
    on_intel do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.30/trellis_darwin_amd64"
      sha256 "36f4c39b485b44f583ff45bc8c10af851b142e13e7bd003599990db564790f28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.30/trellis_linux_arm64"
      sha256 "842aa4a56d4855e28bf5a553480a4ec84618e8827117d60e86fd1a6f2ae7ddfa"
    end
    on_intel do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.30/trellis_linux_amd64"
      sha256 "45cf9084b3e84d622066b14cc8acefb208c031bbdf835fb63845a287ad7fe1db"
    end
  end

  def install
    bin.install Dir["trellis_*"].first => "trellis"
  end

  test do
    assert_match "trellis", shell_output("#{bin}/trellis version")
  end
end
