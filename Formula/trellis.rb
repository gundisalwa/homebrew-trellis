# typed: false
# frozen_string_literal: true

# Trellis — regenerated on each release by .github/workflows/update-formula.yml
# (decision-0032); don't hand-edit the version / url / sha256 lines.
class Trellis < Formula
  desc "Governance layer that supervises an agentic software-development process"
  homepage "https://gundisalwa.github.io/trellis/"
  version "0.2.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.18/trellis_darwin_arm64"
      sha256 "a93cb65e71eda65b1a737e59db770d2411d1c160d7781800e92b2d07ed0f4ca5"
    end
    on_intel do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.18/trellis_darwin_amd64"
      sha256 "3434bb3aeb3633580ee5ee87562d0b2c66c028794e0f29b1c4950931824da0fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.18/trellis_linux_arm64"
      sha256 "46eece311e7dce34958d06ac3ffcfc01c2335f0368876bee62fde80a16db22f9"
    end
    on_intel do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.18/trellis_linux_amd64"
      sha256 "02bc6134a51a3c4f3704a003f2651620e3d55e85b34ebd33b29cdcb47a657a81"
    end
  end

  def install
    bin.install Dir["trellis_*"].first => "trellis"
  end

  test do
    assert_match "trellis", shell_output("#{bin}/trellis version")
  end
end
