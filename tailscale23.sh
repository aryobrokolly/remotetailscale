#!/bin/ash
# Installation script by ARYO.

D1=/usr/sbin
D2=/usr/share
D3=/etc/tailscale
D4=/www/luci-static/resources/view/tailscale
D5=/etc
D6=/usr/lib/opkg/info
D7=/lib/upgrade/keep.d


finish(){
	echo ""
    echo "INSTALL TAILSCALE SUCCESSFULLY ;)"
    echo ""
    sleep 2
    clear
    echo ""
    echo "  1 Logout and Login again"
    echo "  2 Configure: "
    echo "     Services -> Tailscale"
    echo "  3 Tutorial:"
    echo "     https://bit.ly/aryochannel"
    echo ""
    echo ""
    echo "Sertakan Sumber jika mau di kembangkan"
    echo ""
}

download_files()
{
    	touch $DIR/logtailscale.txt
  	echo "Downloading files...."
        sleep 2
        /etc/init.d/tailscale disable
        /etc/init.d/tailscale stop
        clear
  	echo "Downloading file sbin..."
        echo ""
        sleep 2
   	rm -f $D1/tailscale && wget -O $D1/tailscale https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D1/tailscale && chmod +x $D1/tailscale
        clear
        sleep 1
 	rm -f $D1/tailscaled && wget --no-check-certificate -r 'https://docs.google.com/uc?export=download&id=1hK3iwNCvb0Hgp8r7QUh7Av0hrYrfZj6r' -O $D1/tailscaled && chmod +x $D1/tailscaled
  	clear
        echo "Downloading file share..."
	echo ""
	sleep 2
   	rm -f $D2/luci/menu.d/luci-app-tailscale.json && wget -O $D2/luci/menu.d/luci-app-tailscale.json https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D2/luci/menu.d/luci-app-tailscale.json && chmod +x $D2/luci/menu.d/luci-app-tailscale.json
        clear
 	rm -f $D2/rpcd/acl.d/luci-app-tailscale.json && wget -O $D2/rpcd/acl.d/luci-app-tailscale.json https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D2/rpcd/acl.d/luci-app-tailscale.json && chmod +x $D2/rpcd/acl.d/luci-app-tailscale.json
   	clear
        echo "Mkdir tailscale..."
	echo ""
	sleep 2
        mkdir -p $D3
	sleep 1
	mkdir -p $D4
 	echo ""
        clear
 	echo "Downloading file etc..."
        echo ""
	echo ""
        sleep 2
   	rm -f $D5/config/tailscale && wget -O $D5/config/tailscale https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D5/config/tailscale && chmod +x $D5/config/tailscale
        clear
 	rm -f $D5/hotplug.d/iface/40-tailscale && wget -O $D5/tailscale https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D5/hotplug.d/iface/40-tailscale && chmod +x $D5/hotplug.d/iface/40-tailscale
        clear
 	rm -f $D5/init.d/tailscale && wget -O $D5/init.d/tailscale https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D5/init.d/tailscale && chmod +x $D5/init.d/tailscale
        clear
 	rm -f $D5/rc.d/S90tailscale && wget -O $D5/rc.d/S90tailscale https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D5/rc.d/S90tailscale && chmod +x $D5/rc.d/S90tailscale
        clear
 	rm -f $D3/derpmap.cached.json && wget -O $D3/derpmap.cached.json https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D3/derpmap.cached.json && chmod +x $D3/derpmap.cached.json
        clear
   	rm -f $D3/tailscaled.state && wget -O $D3/tailscaled.state https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D3/tailscaled.state && chmod 0600 $D3/tailscaled.state
  	clear
 	echo "Downloading file www..."
        echo ""
	echo ""
        sleep 2
   	rm -f $D4/interface.js && wget -O $D4/interface.js https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D4/interface.js && chmod +x $D4/interface.js
        clear
   	rm -f $D4/setting.js && wget -O $D4/setting.js https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D4/setting.js && chmod +x $D4/setting.js
        clear
   	rm -f $D7/tailscale && wget -O $D7/tailscale https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D7/tailscale
        echo ""
        sleep 1
        clear
   	rm -f $D6/tailscale.conffiles && wget -O $D6/tailscale.conffiles https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D6/tailscale.conffiles && chmod +x $D6/tailscale.conffiles
   	rm -f $D6/tailscale.control && wget -O $D6/tailscale.control https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D6/tailscale.control && chmod +x $D6/tailscale.control
   	rm -f $D6/tailscale.postinst && wget -O $D6/tailscale.postinst https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D6/tailscale.postinst && chmod +x $D6/tailscale.postinst
   	rm -f $D6/tailscale.prerm && wget -O $D6/tailscale.prerm https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D6/tailscale.prerm && chmod +x $D6/tailscale.prerm
   	rm -f $D6/tailscale.list && wget -O $D6/tailscale.list https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D6/tailscale.list && chmod +x $D6/tailscale.list
   	rm -f $D6/luci-app-tailscale.control && wget -O $D6/luci-app-tailscale.control https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D6/luci-app-tailscale.control && chmod +x $D6/luci-app-tailscale.control
   	rm -f $D6/luci-app-tailscale.postinst && wget -O $D6/luci-app-tailscale.postinst https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D6/luci-app-tailscale.postinst && chmod +x $D6/luci-app-tailscale.postinst
   	rm -f $D6/luci-app-tailscale.postinst-pkg && wget -O $D6/luci-app-tailscale.postinst-pkg https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D6/luci-app-tailscale.postinst-pkg && chmod +x $D6/luci-app-tailscale.postinst-pkg
   	rm -f $D6/luci-app-tailscale.prerm && wget -O $D6/luci-app-tailscale.prerm https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D6/luci-app-tailscale.prerm && chmod +x $D6/luci-app-tailscale.prerm
   	rm -f $D6/luci-app-tailscale.list && wget -O $D6/luci-app-tailscale.list https://raw.githubusercontent.com/aryobrokolly/tailscaleup/main/$D6/luci-app-tailscale.list && chmod +x $D6/luci-app-tailscale.list
        sleep 2
	clear
    	finish
}

echo ""
echo "Install luci-app-tailscale from repo Aryo Brokolly"

while true; do
    read -p "This will download the files repo. Do you want to continue (y/n)? " yn
    case $yn in
        [Yy]* ) download_files; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer 'y' or 'n'.";;
    esac
done


update(){
	tailscale update
}

while true; do
    read -p "Update Tailscale New Version. Do you want to continue (y/n)? " yn
    case $yn in
        [Yy]* ) update; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer 'y' or 'n'.";;
    esac
done

