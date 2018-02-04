#!/bin/bash


#DATA_FILE_PLAY="/home/pi/tmp/play.cmd"
#DATA_FILE_LOAD_LIST="/home/pi/tmp/loadList.cmd"

DATA_FILE_PLAY="play.cmd"
DATA_FILE_LOAD_LIST="loadList.cmd"

SONOS_BOX_PORT="1400"

# Bathroom
SONOS_BOX_IP_BATHROOM="192.168.1.40"
SONOS_SERIAL_NUMBER_BATHROOM="B8E937347456"

# Bedroom
SONOS_BOX_IP_BEDROOM="192.168.1.52"
SONOS_SERIAL_NUMBER_BEDROOM="5CAAFD4D8D7C"

SONOS_BOX_IP="${SONOS_BOX_IP_BEDROOM}"
SONOS_SERIAL_NUMBER="${SONOS_SERIAL_NUMBER_BEDROOM}"

SONOS_BOX="${SONOS_BOX_IP}:${SONOS_BOX_PORT}"

CURL="/usr/bin/curl"

echo "Starting Guensch Station on IP: ${SONOS_BOX_IP}, Serial #${SONOS_SERIAL_NUMBER}"

${CURL} -s -X POST -d @${DATA_FILE_LOAD_LIST} http://${SONOS_BOX}/MediaRenderer/AVTransport/Control --header "X-SONOS-TARGET-UDN: uuid:RINCON_${SONOS_SERIAL_NUMBER}01400" --header "SOAPACTION: \"urn:schemas-upnp-org:service:AVTransport:1#SetAVTransportURI\"" > /dev/null
sleep 2
${CURL} -s -X POST -d @${DATA_FILE_PLAY} http://${SONOS_BOX}/MediaRenderer/AVTransport/Control --header "X-SONOS-TARGET-UDN: uuid:RINCON_${SONOS_SERIAL_NUMBER}01400" --header "SOAPACTION: \"urn:schemas-upnp-org:service:AVTransport:1#Play\"" > /dev/null
