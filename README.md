# android-custom-stuff
Flashable ZIP for Wileyfox Swift and HP TouchPad.

Tested with TWRP 3.1/3.5 and LineageOS 14.1/16.0.

**DON'T USE THIS ZIP FILE! YOU'VE BEEN WARNED.**

# What's included?
* Custom captive portal check URLs
* Hide root indicator icon at status bar
* Custom AFWall+ script (with built-in include of another local script)
* Custom `gps.conf` (with `gps_debug.conf` hack) for alternative XTRA download URLs

All features are upgrade-safe! (addon.d support)

## AFWall+
Setup the script at AFWall+ as custom script: 

```bash
. /data/local/afwall.sh &>/sdcard/afwall.log
```

Don't forget the dot at the beginning! (Or use the `source` keyword instead.)

### Custom firewall rules
Don't edit the `afwall.sh` script! Your changes will be lost after the next upgrade.

Create the file `/data/local/afwall.custom.sh` for your own ruleset(s).

## gps.conf
Don't edit `gps.conf` or `gps_debug.conf` anywhere! Your changes will be lost after the next upgrade.

Create a file somewhere (i.e. `/data/local/gps_example.conf`) and setup a new symlink at `/system/etc` or `/etc`.
