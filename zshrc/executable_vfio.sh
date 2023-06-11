vfio_switch_display_win_right() {
	echo "Switching right screen windows"
	xrandr --output DisplayPort-0 --off
}

vfio_switch_displays_arch() {
	echo "Restoring outputs..."
	xrandr --output HDMI-A-0 --mode 3840x2160 --rate 60 --pos 0x0 --primary
	xrandr --output DisplayPort-0 --mode 2560x1440 --rate 164.96 --pos 3840x25
}

vfio_enable_hugepages() {
	echo -n "Compacting memory... "
	echo 1 | sudo tee /proc/sys/vm/compact_memory
	echo -n "Enabling hugepages... "
	echo 10 | sudo tee /proc/sys/vm/nr_hugepages

	echo -n "Allocated: "
	sudo cat /proc/sys/vm/nr_hugepages
}

vfio_disable_hugepages() {
	echo -n "Disabling hugepages... "
	echo 0 | sudo tee /proc/sys/vm/nr_hugepages
}
