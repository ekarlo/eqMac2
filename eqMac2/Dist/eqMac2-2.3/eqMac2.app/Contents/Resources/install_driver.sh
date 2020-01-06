#!/bin/sh

# Enable install of apps downloaded from anywhere
spctl --master-disable

# Get current directory path
CURRDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Remove all old drivers
source $CURRDIR/uninstall_driver.sh

## # Install driver - location depending on macOS version
## let VERMINOR=$( sw_vers -productVersion | awk -F '.' '{ print $2 }' )
##
## if [ $VERMINOR -lt 15 ]; then
##   # pre Catalina
##   DRIVERDIR="/System/Library/Extensions/"
## else
##   DRIVERDIR="/Library/Extensions/"
## fi

# Install driver - in 3rd party location if present else System
if [ -d "/Library/Extensions/" ]; then
  DRIVERDIR="/Library/Extensions/"
else
  DRIVERDIR="/System/Library/Extensions/"
fi

# Install the new driver
touch $DRIVERDIR

echo "Installing $CURRDIR/eqMac2Driver.kext in $DRIVERDIR"
cp -R $CURRDIR/eqMac2Driver.kext $DRIVERDIR
kextload -v 2 ${DRIVERDIR}eqMac2Driver.kext

touch $DRIVERDIR
