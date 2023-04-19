#!/bin/sh
#####################################################################
# A script to collect the Bundle Version of Alertus Desktop Client. #
#####################################################################

PLIST="/Applications/Alertus Desktop.app/Contents/Info.plist"
KEY="CFBundleVersion"
if [ -f "${PLIST}" ]; then
	RESULT=$(/usr/bin/defaults read "${PLIST}" "${KEY}" 2>/dev/null)
else
	RESULT="Not Installed"
fi

/bin/echo "<result>${RESULT}</result>"

exit 0