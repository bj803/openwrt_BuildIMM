#!/bin/bash
#===============================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.111.5/g' openwrt/package/base-files/files/bin/config_generate

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/ImmortalWrt/Home803/g' package/base-files/files/bin/config_generate

#2. Custom settings
#sed -i 's?zstd$?zstd ucl upx\n$(curdir)/upx/compile := $(curdir)/ucl/compile?g' tools/Makefile
#sed -i 's/$(TARGET_DIR)) install/$(TARGET_DIR)) install --force-overwrite/' package/Makefile
sed -i 's/root:.*/root:$1$qTM.tEk0$J0I9VtO1JT99G4R2iZKaA\/:18336:0:99999:7:::/g' package/base-files/files/etc/shadow
