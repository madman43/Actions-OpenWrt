#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.2/g' package/base-files/files/bin/config_generate

# 第三方软件源
git clone https://github.com/siropboy/sirpdboy-package package/sirpdboy-package

#添加额外非必须软件包
#网络测试
#git clone https://github.com/sirpdboy/NetSpeedTest package/NetSpeedTest



#第三方主题
git clone https://github.com/sirpdboy/luci-theme-opentopd package/luci-theme-opentopd


#OpenClash小猫咪
git clone https://github.com/vernesong/OpenClash.git package/OpenClash

#应用过滤
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter


#多合一通知插件
git clone https://github.com/zzsj0928/luci-app-pushbot package/luci-app-pushbot

#添加smartdns
#git clone https://github.com/pymumu/openwrt-smartdns package/smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
