class Veccore < Formula
  desc "C++ Library for Portable SIMD Vectorization"
  homepage "https://root-project.github.io/veccore"
  url "https://github.com/root-project/veccore/archive/v0.6.0.tar.gz"
  sha256 "db404d745906efec2a76175995e847af9174df5a8da1e5ccdb241c773d7c8df9"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/drbenmorgan/homebrew-test/releases/download/veccore-0.6.0"
    cellar :any_skip_relocation
    sha256 "80c3a2009d8f6c28fda66505fe68ebfc62dbf3c24a10c4ccc01b842b58efeb96" => :catalina
    sha256 "b0045ca63b53b6f7292f75e8493106a4f1d7024e90811f084c2ffc506f1de1da" => :x86_64_linux
  end

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "true"
  end
end
