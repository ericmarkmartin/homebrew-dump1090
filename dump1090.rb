require "formula"

class Dump1090 < Formula
  homepage "https://github.com/MalcolmRobb/dump1090"
  head "https://github.com/MalcolmRobb/dump1090.git"
  sha1 "4c57a2efac21c51bd9001d8b8d6d6b522e79a6a2"
  
  def install
    system "make"
    system "make", "install"
  end

  test do
    system "false"
  end
end
