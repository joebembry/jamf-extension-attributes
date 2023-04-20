#!/bin/sh
#########################################################################
# A script to collect the Bundle Version of Sassafras KeyAccess Client. #
#########################################################################

PLIST="/Library/KeyAccess/KeyAccess.app/Contents/Info.plist"
KEY="CFBundleShortVersionString"
if [ -f "${PLIST}" ]; then
	RESULT=$(/usr/bin/defaults read "${PLIST}" "${KEY}" 2>/dev/null)
else
	RESULT="Not Installed"
fi

/bin/echo "<result>${RESULT}</result>"

exit 0