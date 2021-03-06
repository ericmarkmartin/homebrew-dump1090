class Dump1090 < Formula
  desc 'a Mode S decoder specifically designed for RTLSDR devices'
  homepage 'https://github.com/MalcolmRobb/dump1090'
  head 'https://github.com/MalcolmRobb/dump1090.git'

  depends_on 'pkg-config' => :build
  depends_on 'libusb'
  depends_on 'librtlsdr'
  
  def install
    system 'make'
    bin.install 'view1090'
    libexec.install 'dump1090'
    cp_r 'public_html', libexec
    (bin/"dump1090").write <<~EOS
      #!/bin/sh
      cd '#{libexec}'
      './dump1090' "$@"
    EOS
  end

  test do
    system 'false'
  end
end
