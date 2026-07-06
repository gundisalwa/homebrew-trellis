# typed: false
# frozen_string_literal: true

# Trellis — regenerated on each release by .github/workflows/update-formula.yml
# (decision-0032); don't hand-edit the version / url / sha256 lines.
class Trellis < Formula
  desc "Governance layer that supervises an agentic software-development process"
  homepage "https://gundisalwa.github.io/trellis/"
  version "0.2.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.19/trellis_darwin_arm64"
      sha256 "cc0bb350d8bd0665ad3cf8ad438e357990de23421140cde3ed1e99dbd8177f35"
    end
    on_intel do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.19/trellis_darwin_amd64"
      sha256 "bf325e71395d4533c09e827ecb98b46f254af9594d8c653098b52181ac10190d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.19/trellis_linux_arm64"
      sha256 "5714d381296b9f12ea83eb12000709e1c30c357afdf58514db3ebaf9ac2a2179"
    end
    on_intel do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.19/trellis_linux_amd64"
      sha256 "765fb59130856bd385c66dc5017e6f68d61671313e167a7419e9877d651aa585"
    end
  end

  def install
    bin.install Dir["trellis_*"].first => "trellis"
  end

  test do
    assert_match "trellis", shell_output("#{bin}/trellis version")
  end
end
