# Heimcontrol.js in Resin.io

## Introduction

This project installs [heimcontrol.js](http://ni-c.github.io/heimcontrol.js/) on [Resin.io](http://resin.io).

The source code for [heimcontrol.js](http://ni-c.github.io/heimcontrol.js/) come from https://github.com/ni-c/heimcontrol.js, some script files are added to install it on [Resin.io](http://resin.io).

## Prerequisite

The [heimcontrol.js](http://ni-c.github.io/heimcontrol.js/) requires Mongodb which is not officially supported for ARM. In this project, the pre-compiled binaries of Mongodb are used which can be found from https://github.com/brice-morin/ArduPi.

## Resin.io Setup & Deployment

1. If you haven't got a [Resin.io](http://resin.io) alpha account, visit [alpha.resin.io](http://alpha.resin.io) and sign up.
1. Start a new applicaton on [Resin.io](http://resin.io) download the .zip file, format the SD card in FAT32 and extract it to your SD card. 
1. Insert the SD card into the Raspberry Pi, power it up using the micro-usb cable and connect it to the internet.
1. After about 10 minutes your new device should show up on your application dashboard.
1. You can now clone the Resin-heimcontrol repo:

`$ git clone https://github.com/nghiant2710/Resin-heimcontrol.git`

Then add the resin remote:

`$ git remote add resin git@git.staging.resin.io:<myUserName>/<myApplicationName>.git`

And finally push the code to your Raspberry Pi:

`$ git push resin master`

You can start [heimcontrol.js](http://ni-c.github.io/heimcontrol.js/) by accessing `<yourPiIPAddress>:<portNumber>` (Example: 192.168.2.123:8080) on your web browser. The valid port will be displayed when [heimcontrol.js](http://ni-c.github.io/heimcontrol.js/) is started.

![heimcontrol.js Login Page](/images/Login.JPG)