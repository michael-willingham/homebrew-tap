class Zigflow < Formula
  desc "Temporal DSL for turning declarative YAML into production-ready workflows"
  homepage "https://zigflow.dev/"
  version "0.6.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mrsimonemms/zigflow/releases/download/v#{version}/zigflow_darwin_arm64"
      sha256 "80dbd61d5ff1a10f62041cb6ccec61d8619784d9d2e32907b38adcd9b3cf0ecb"
    else
      url "https://github.com/mrsimonemms/zigflow/releases/download/v#{version}/zigflow_darwin_x86_64"
      sha256 "cc3f28496651f6b6393435bb4ca009624cfd234a8fe5f4f43fd548c13107ab8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mrsimonemms/zigflow/releases/download/v#{version}/zigflow_linux_arm64"
      sha256 "eeddca41c691a36557417a22bd0b61a914351f1be7bd9a9d4aecaa10045dd9f7"
    else
      url "https://github.com/mrsimonemms/zigflow/releases/download/v#{version}/zigflow_linux_x86_64"
      sha256 "7b1f7645d316af4e3175d94807605fd46dcf7668578f0073adbcdb310f6ee7da"
    end
  end

  def install
    bin.install Dir.glob("zigflow*").first => "zigflow"
  end

  test do
    assert_match "zigflow version #{version}", shell_output("#{bin}/zigflow version")
  end
end
