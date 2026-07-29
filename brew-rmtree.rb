class BrewRmtree < Formula
    homepage "https://github.com/beeftornado/homebrew-rmtree"
    url "https://github.com/beeftornado/homebrew-rmtree.git", :tag => "2.2.6"
    revision 1

    head "https://github.com/beeftornado/homebrew-rmtree.git"

    def install
      bin.install "cmd/brew-rmtree.rb"
    end

    test do
      system "brew", "rmtree", "--help"
    end
end
