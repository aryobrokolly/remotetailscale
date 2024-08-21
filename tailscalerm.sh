#!/bin/ash
# Installation script by ARYO.

D1=/usr/sbin
D2=/usr/share
D3=/etc/tailscale
D4=/www/luci-static/resources/view/tailscale
D5=/etc
D6=/usr/lib/opkg/info


finish(){
	echo ""
    echo "UNINSTALL TAILSCALE SUCCESSFULLY ;)"
    echo ""
    sleep 2
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
        echo ""
        sleep 2
   	rm -f $D1/tailscale 
   	rm -f $D2/luci/menu.d/luci-app-tailscale.json
 	rm -f $D2/rpcd/acl.d/luci-app-tailscale.json
   	rm -f $D5/config/tailscale
 	rm -f $D5/hotplug.d/iface/40-tailscale
 	rm -f $D5/init.d/tailscale
 	rm -f $D5/rc.d/S90tailscale
 	rm -f $D3/derpmap.cached.json
   	rm -f $D3/tailscaled.state
   	rm -f $D4/interface.js
   	rm -f $D4/setting.js
   	rm -f $D6/tailscale.conffiles
   	rm -f $D6/tailscale.control
   	rm -f $D6/tailscale.postinst
   	rm -f $D6/tailscale.prerm
   	rm -f $D6/tailscale.list
   	rm -f $D6/luci-app-tailscale.control
   	rm -f $D6/luci-app-tailscale.postinst
   	rm -f $D6/luci-app-tailscale.postinst-pkg
   	rm -f $D6/luci-app-tailscale.prerm
   	rm -f $D6/luci-app-tailscale.list
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

