# typed: false
# frozen_string_literal: true

# Trellis — DEPRECATED, frozen at v0.2.29 (the final binary release).
#
# The trellis end-user binary channel retired per kodhama-0007 rule 5
# ("one render, many copiers" — kodhama/kodhama decisions/0007, implemented in
# kodhama/trellis#120 / decision-0043). The regeneration machinery
# (update-formula.yml + scripts/gen-formula.sh, decision-0032/0041) is removed
# in the same change; this file is hand-frozen and no release will re-pin it.
#
# Install Trellis today:
#   Claude Code:      /plugin marketplace add kodhama/kodhama
#                     /plugin install trellis@kodhama
#                     /trellis:setup
#   any other harness: copy the pre-rendered payload — see the README's
#                     "Get started" manual copy path in kodhama/trellis.
class Trellis < Formula
  desc "Governance layer that supervises an agentic software-development process"
  homepage "https://kodhama.github.io/trellis/"
  version "0.2.30"
  license "MIT"

  deprecate! date: "2026-07-10", because: "is replaced by the Claude Code plugin " \
    "(/plugin marketplace add kodhama/kodhama, /plugin install trellis@kodhama, /trellis:setup) " \
    "and the manual copy path in the kodhama/trellis README — the end-user binary channel " \
    "retired (kodhama-0007 rule 5)"

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

  def caveats
    <<~EOS
      The trellis binary channel is retired; this formula is frozen at v0.2.29
      and will not receive updates. Install Trellis via the Claude Code plugin:

        /plugin marketplace add kodhama/kodhama
        /plugin install trellis@kodhama
        /trellis:setup

      or, for any other harness, copy the pre-rendered payload by hand — see
      "Get started" in https://github.com/kodhama/trellis (kodhama-0007 rule 5).
    EOS
  end

  test do
    assert_match "trellis", shell_output("#{bin}/trellis version")
  end
end
