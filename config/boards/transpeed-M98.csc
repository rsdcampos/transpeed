# Allwinner H618 quad core 4GB RAM SoC WiFi USB
BOARD_NAME="Transpeed M98"
BOARDFAMILY="sun50iw9"
BOARD_MAINTAINER="rsdcampos"
BOOTCONFIG="transpeed-m98_defconfig"
OVERLAY_PREFIX="sun50i-h616"
BOOT_LOGO="desktop"
KERNEL_TARGET="edge,dev"
FORCE_BOOTSCRIPT_UPDATE="yes"

function post_family_tweaks__transpeed_m98() {
    display_alert "$BOARD" "Installing board tweaks" "info"

	cp -R $SRC/packages/blobs/station/firmware/brcm/* $SDCARD/lib/firmware/brcm
	cp -R $SRC/packages/blobs/sunxi/h618/armbian-audio-config $SDCARD/usr/lib/armbian
	cp -R $SRC/packages/blobs/sunxi/h618/armbian-audio-config $SDCARD/lib/armbian
	
	return 0
}
