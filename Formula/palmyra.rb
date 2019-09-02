class Palmyra < Formula
  desc "Localizable.strings files validation"
  homepage "https://github.com/appunite/Palmyra"
  url "https://github.com/appunite/Palmyra",
    :using => :git,
    :tag => "0.1.3",
    :revision => "e72c620c89699b88b4d0275a3a4a91e5af5384c2"
  head "https://github.com/appunite/Palmyra.git"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/Palmyra" "--help"
  end
end
