#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add custom feeds source into feeds.conf.default
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git xiaorouji https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default

# Clone custom feeds source
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb #git lua-maxminddb 依赖
git clone https://github.com/jerrykuku/luci-app-vssr.git package/lean/luci-app-vssr

# Add custom theme
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone https://github.com/sirpdboy/luci-theme-opentopd package/lean/luci-theme-opentopd
git clone https://github.com/rosywrt/luci-theme-rosy.git package/lean/luci-theme-rosy
git clone https://github.com/sypopo/luci-theme-argon-mc.git package/lean/luci-theme-argon-mc
git clone https://github.com/Aslin-Ameng/luci-theme-Night.git package/lean/luci-theme-Night
git clone https://github.com/Aslin-Ameng/luci-theme-Light.git package/lean/luci-theme-Light


