# SonosControl

SonosControl is a very crude script to control your sonos speakers from the CLI
(starts a predefined playlist).

You need to adopt the script and set an IP address and serial number, so the
script can work.

You can find the serial number and the IP address of your sonos speakers from
the "About My Sonos System" menu.

Just remember to enter the serial number without the dashes.

## Configure the Stream URL

To configure the stream that is played when you execute the `sonosControl.sh`
command, run the setup command with the streaming source. For example a streaming
icecast server running on 192.168.1.84. This would like

    ./setup.sh http://192.168.1.84:8000/rapi.mp3.m3u
