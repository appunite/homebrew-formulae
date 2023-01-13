class Palmyra < Formula
  desc "Localizable.strings files validation"
  homepage "https://github.com/appunite/Palmyra"
  url "https://github.com/appunite/Palmyra",
    :using => :git,
    :tag => "0.1.4",
    :revision => "9fe6d9702b4c37e5dcf6a5b43737302d7fa39de8"
  head "https://github.com/appunite/Palmyra.git"

  depends_on :xcode => ["14.2", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/Palmyra" "--help"
  end
end
