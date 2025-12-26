include $(TOPDIR)/rules.mk

PKG_NAME:=my-wifi-config
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Superfr1es
PKG_LICENSE:=GPL-2.0

include $(INCLUDE_DIR)/package.mk

define Package/myfeeds
  SECTION:=base
  CATEGORY:=Base system
  TITLE:=Factory Reset WiFi Configuration
  DEPENDS:=
  PKGARCH:=all
endef

define Package/my-config/description
  Set WiFi SSID to "网名真难取" and password to "12345678" on factory reset.
endef

define Build/Compile
endef

define Package/my-config/install
	# 将脚本安装到 /lib/firstboot/ 目录
	$(INSTALL_DIR) $(1)/lib/firstboot
	$(INSTALL_BIN) ./files/set-wifi $(1)/lib/firstboot/set-wifi
endef

$(eval $(call BuildPackage,my-config))