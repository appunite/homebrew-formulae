class Palmyra < Formula
  desc "Localizable.strings files validation"
  homepage "https://github.com/appunite/Palmyra"
  url "https://github.com/appunite/Palmyra",
    :using => :git,
    :tag => "0.1.5",
    :revision => "b73742d3273bb4ce15612797b77bc91c08d698a6"
  head "https://github.com/appunite/Palmyra.git"

  depends_on :xcode => ["14.2", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/Palmyra" "--help"
  end
end
