class Palmyra < Formula
  desc "Localizable.strings files validation"
  homepage "https://github.com/appunite/Palmyra"
  url "https://github.com/appunite/Palmyra",
    :using => :git,
    :tag => "0.1.0",
    :revision => "9395137257d2831c1b5ef6134be17c40263cae37"
  head "https://github.com/appunite/Palmyra.git"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/Palmyra" "--help"
  end
end
