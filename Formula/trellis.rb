# typed: false
# frozen_string_literal: true

# Trellis — regenerated on each release by .github/workflows/update-formula.yml
# (decision-0032); don't hand-edit the version / url / sha256 lines.
class Trellis < Formula
  desc "Governance layer that supervises an agentic software-development process"
  homepage "https://gundisalwa.github.io/trellis/"
  version "0.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.13/trellis_darwin_arm64"
      sha256 "8aad5dea1783c1af66597c2834fcf9405052112f4d2b668a13f8aab3a3b936bc"
    end
    on_intel do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.13/trellis_darwin_amd64"
      sha256 "4f8e83fee61532b95b6f6b59a1cfb5765df0267ccd6e190b1b3bb2ed63b7191e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.13/trellis_linux_arm64"
      sha256 "8a0ae7fe1a38d6dc1a213851b04d7d3cfc7fb1351620fda9ac2fc2d7f489c38a"
    end
    on_intel do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.13/trellis_linux_amd64"
      sha256 "0e50996ad3352dafb7251999b548d66c5387a7fc7d108c082d56338fc5d03f41"
    end
  end

  def install
    bin.install Dir["trellis_*"].first => "trellis"
  end

  test do
    assert_match "trellis", shell_output("#{bin}/trellis version")
  end
end
