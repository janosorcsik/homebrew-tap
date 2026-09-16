# typed: strict
# frozen_string_literal: true

# Formula for nightlight, a CLI for macOS Night Shift configuration.
class Nightlight < Formula
  desc "CLI for configuring 'Night Shift' on macOS"
  homepage "https://github.com/smudge/nightlight"
  url "https://github.com/smudge/nightlight/releases/download/v#{version}/nightlight.arm64"
  version "1.0.0"
  sha256 "3ed2082d2a3c4fb76be4380e3c4870f8106bcec3ce06bf27d3b94fa1fb8e2057"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  def install
    bin.install "nightlight.arm64" => "nightlight"
  end

  test do
    system "#{bin}/nightlight", "--help"
  end
end
