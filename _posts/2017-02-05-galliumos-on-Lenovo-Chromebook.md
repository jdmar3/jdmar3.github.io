---
layout: post
title:  "GalliumOS on Chromebook"
date:   2017-02-05 17:15:00
categories: computing
tags: [ CHRX, GalliumOS, ChromeOS, Chromebook, Lenovo N20P, atmel_mxt_ts, touchscreen, Ubuntu, Linux ]
excerpt_separator: <!--more-->
---

{% newthought "I have had a Chromebook for a few years" %} and have always wanted to put a real Linux distribution on it. 
This weekend my friend [Elliott Hauser](https://twitter.com/hauspoor) showed me [GalliumOS](https://galliumos.org/), which is being developed as a full but lightweight GNU/Linux distribution for Chromebooks. 

<!--more-->

This desire to have real Linux on my Chromebook was recently rekindled while working with students to install [Kali Linux](https://www.kali.org/) so that we can work on a [GNURadio](http://gnuradio.org/) project in [class](https://inls718.johndmart.in). 
I wanted to install Kali on the Lenovo N20P that I have been carrying everywhere for the last 2+ years, and so I tried [Crouton](https://github.com/dnschneid/crouton), since it has Kali as one of the available distributions. 

I couldn't get it to actually start the desktop environment, though. 
It would take the start command and then go to blank screen and then do nothing past that. 

# CHRX

I mentioned this to Elliott and he suggested using [CHRX](https://github.com/reynhout/chrx) to set up a real dual-boot instead of Crouton, which just places another Linux chroot inside ChromeOS. 
Kali Linux was not one of the install options, but GalliumOS 
I played around with it on one of his devices and was pretty impressed. 
It had all the packages I need to run GNURadio with SDR devices, so I decided to give it a try. 

I followed the instructions available on the [GalliumOS wiki](https://wiki.galliumos.org/Installing) for my hardware ([Intel Baytrail](https://wiki.galliumos.org/Installing/Baytrail)), which requires a firmware update before the install can begin. 

I should add that the Chromebook was already in [developer mode](https://wiki.galliumos.org/Installing/Preparing) before I began. 
The GalliumOS involved downloading and running the [install script](https://chrx.org/#usage) once to update the firmware and install the legacy bootloader.{% sidenote 'warning' "It is really important to actually look at and understand the scripts that you are downloading before you run them using sudo. The method on the CHRX page uses several commands strung together which download and then run the script without pausing. It is better to download the script first and then run it, in my opinion, but everyone makes their own choices." %} 
This powerwashes and "repairs" the Chromebook to repartition the SSD.
Then, after a reboot, downloading and running the same script. 

I allocated the maximum available space to GalliumOS, because I'm not going to use ChromeOS much if at all at this point. 
I'll probably eventually just remove that partition altogether. 

# Touchscreen

The touchscreen on the N20P worked out of the box with GalliumOS, but I noticed that it failed to respond after I closed and reopened the lid. 

After some poking around, I figured out that the there was something happening with the kernel module for the touchscreen that made it fail after a lid close suspend. 
It comes back just fine after a suspend from the interface, but if the lid is closed, then the touchscreen doesn't work. 

I was able to get it working once again once out of suspend by opening a terminal and reloading the `atmel_mxt_ts` module:

`sudo rmmod atmel_mxt_ts && sudo modprobe atmel_mxt_ts`

To avoid having to do that myself every time. I added a script (as root) to `/lib/systemd/system-sleep/` that reloads the module after the system comes back from suspend triggered by lid closure.

```

#!/bin/bash
# /lib/systemd/system-sleep/touchscreen
# This will reload the atmel_mxt_ts module after suspension from lid close 
# so that the touchscreen will function.

set -e

if [ "$2" = "suspend" ] || [ "$2" = "hybrid-sleep" ]; then
    case "$1" in
        post) /sbin/rmmod atmel_mxt_ts && /sbin/modprobe atmel_mxt_ts ;;
    esac
fi

```

This is a hack, and there is likely a better way to do this, but it works now, so I'm sated for the moment. 

Now I can install GNURadio and play with Software Defined Radio (SDR) on my Chromebook. 