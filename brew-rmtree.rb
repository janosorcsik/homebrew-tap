# typed: strict
# frozen_string_literal: true

# Formula for brew-rmtree, a Homebrew plugin to remove formulae with their unused dependencies.
class BrewRmtree < Formula
  desc "Remove a formula and its unused dependencies"
  homepage "https://github.com/beeftornado/homebrew-rmtree"
  url "https://github.com/beeftornado/homebrew-rmtree.git", tag: "2.2.11"
  revision 1

  head "https://github.com/beeftornado/homebrew-rmtree.git"

  def install
    chmod 0755, "cmd/brew-rmtree.rb"
    bin.install "cmd/brew-rmtree.rb"
  end

  test do
    system "brew", "rmtree", "--help"
  end
end
