class Veccore < Formula
  desc "C++ Library for Portable SIMD Vectorization"
  homepage "https://root-project.github.io/veccore"
  url "https://github.com/root-project/veccore/archive/v0.6.0.tar.gz"
  sha256 "db404d745906efec2a76175995e847af9174df5a8da1e5ccdb241c773d7c8df9"
  license "Apache-2.0"

  depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "cmake", ".", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    system "true"
  end
end
