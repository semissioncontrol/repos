package = {
  name = "busybox",
  version = "1.32.0",
  source = "https://busybox.net/downloads/busybox-1.32.0.tar.bz2",
  checksum = "1b1227af69a97e820e28f5f1c62413e4e179202ab525725ea0b1afe9b9f9a5f00e5e32f4603e804ba1596b0fedd60d60457a6d2b8fcedfab45b6e049caeb319b",
  git = false
}

function build()
  os.execute("make defconfig")
  os.execute("make menuconfig")
  make()
end

function install()
  os.execute("make CONFIG_PREFIX=\"" .. install_dir .. "/bindir/busybox/1.32.0/\" install")
end
