package = {
  name = "semcos-chroot",
  version = "source",
  source = "github.com/semissioncontrol/semcOS.git",
  git = true
}

description = "SEMC OS is an operating system for Space Exploration and beyond!"

function install()
  io.write("What device would you like to install the SEMC OS chroot on? (Device must be specific like /dev/sdc1) (All data on that partition will be lost!) ")
  local device = io.read()
  os.execute("mkdir -p /mnt/semcos && mount "+device+" /mnt/semcos")
  print("Installing OS...")
  os.execute("bin/semcos")
end
