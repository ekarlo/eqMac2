#!/bin/sh

# Remove all old drivers
echo "Remove all old drivers"

DRIVERDIR="/System/Library/Extensions/"
# Remove eqMac 1.0 driver
if [ -d ${DRIVERDIR}eqMacDriver.kext/ ]; then
  kextunload ${DRIVERDIR}eqMacDriver.kext/
  rm -rf ${DRIVERDIR}eqMacDriver.kext/
  echo "${DRIVERDIR}eqMacDriver.kext removed"
fi
# Remove eqMac < 2.1 driver
if [ -d ${DRIVERDIR}eqMac2Driver.kext/ ]; then
  kextunload ${DRIVERDIR}eqMac2Driver.kext/
  rm -rf ${DRIVERDIR}eqMac2Driver.kext/
  echo "${DRIVERDIR}eqMac2Driver.kext removed"
fi

DRIVERDIR="/Library/Extensions/"
# Remove eqMac 1.0 driver
if [ -d ${DRIVERDIR}eqMacDriver.kext/ ]; then
  kextunload ${DRIVERDIR}eqMacDriver.kext/
  rm -rf ${DRIVERDIR}eqMacDriver.kext/
  echo "${DRIVERDIR}eqMacDriver.kext removed"
fi
# Remove eqMac < 2.1 driver
if [ -d ${DRIVERDIR}eqMac2Driver.kext/ ]; then
  kextunload ${DRIVERDIR}eqMac2Driver.kext/
  rm -rf ${DRIVERDIR}eqMac2Driver.kext/
  echo "${DRIVERDIR}eqMac2Driver.kext removed"
fi
