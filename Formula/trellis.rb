# typed: false
# frozen_string_literal: true

# Trellis — regenerated on each release by .github/workflows/update-formula.yml
# (decision-0032); don't hand-edit the version / url / sha256 lines.
class Trellis < Formula
  desc "Governance layer that supervises an agentic software-development process"
  homepage "https://kodhama.github.io/trellis/"
  version "0.2.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.27/trellis_darwin_arm64"
      sha256 "4f04d15e6a755a000cc65bec6c7e3c36a3550eacb0d0e2287b5c775dbea8e71e"
    end
    on_intel do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.27/trellis_darwin_amd64"
      sha256 "b4923db6c7e01b51031a36d81ccdb8df5f4ba2a4e2c70f7d0b2ed3ed9fea1971"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.27/trellis_linux_arm64"
      sha256 "ccceca1456dbbe16ee30538f56db598b4067176e682ffa0284529e79283e4c29"
    end
    on_intel do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.27/trellis_linux_amd64"
      sha256 "83644626d65ab1c3afc329b6992ef4197f9537bbdbd21523816aa310e2d4f32d"
    end
  end

  def install
    bin.install Dir["trellis_*"].first => "trellis"
  end

  test do
    assert_match "trellis", shell_output("#{bin}/trellis version")
  end
end
