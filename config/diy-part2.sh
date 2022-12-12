# Modify some code adaptation
#sed -i 's/LUCI_DEPENDS.*/LUCI_DEPENDS:=\@\(arm\|\|aarch64\)/g' package/lean/luci-app-cpufreq/Makefile
# Add autocore support for armvirt
sed -i 's/TARGET_rockchip/TARGET_rockchip\|\|TARGET_armvirt/g' package/lean/autocore/Makefile
# Modify default IP
sed -i 's/192.168.1.1/192.168.5.2/g' package/base-files/files/bin/config_generate

# => 阿里云web dav
git clone https://github.com/messense/aliyundrive-webdav.git package/luci-app-aliyundrive-webdav
# => 阿里ddns
git clone https://github.com/chenhw2/luci-app-aliddns.git package/luci-app-aliddns
# => openclash
git clone https://github.com/vernesong/OpenClash.git package/luci-app-openclash
# => dockerman
git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
# => passwall2
git clone https://github.com/xiaorouji/openwrt-passwall2.git package/luci-app-passwall2
# => vssr
git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
# => ssr plus
git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld

# => 更换默认argon主题
rm -rf feeds/luci/themes/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon

sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile
