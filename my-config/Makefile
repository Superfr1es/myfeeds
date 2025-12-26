include $(TOPDIR)/rules.mk

PKG_NAME:=my-config
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Superfr1es
PKG_LICENSE:=GPL-2.0

include $(INCLUDE_DIR)/package.mk

define Package/my-config
  SECTION:=base
  CATEGORY:=Base system
  TITLE:=Factory Reset WiFi Configuration
  DEPENDS:=
  PKGARCH:=all
endef

define Package/my-config/description
  Set WiFi SSID to "名字" and password to "12345678" on factory reset.
endef

define Build/Compile
endef

define Package/my-config/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_BIN) ./files/set-wifi $(1)/etc/uci-defaults/set-wifi
endef	

$(eval $(call BuildPackage,my-config))