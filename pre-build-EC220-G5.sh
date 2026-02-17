#!/bin/bash
ls -la

NFQWS_DIR="padavan-ng-test/trunk/user/nfqws"
echo "Cleaning old zapret files..."
rm -rf "$NFQWS_DIR"/zapret-* "$NFQWS_DIR"/zapretsh-main
rm -f "$NFQWS_DIR"/*.tar.gz
#RTL8367_DIR="padavan-ng/trunk/linux-3.4.x/drivers/net/rtl8367"
#echo "Cleaning old zapret files..."
#rm -r "$RTL8367_DIR"/rtl8367_drv.c "$RTL8367_DIR"/Makefile "$RTL8367_DIR"/Kconfig
#tar -xf "$ROUTER_MODEL"/rtl8367.tar.gz -C "$RTL8367_DIR"
#ls -la "$RTL8367_DIR"
