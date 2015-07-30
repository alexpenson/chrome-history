SDIR="$( cd "$( dirname "$0" )" && pwd )"
strings ~/Library/Application\ Support/Google/Chrome/Default/Last\ Tabs | grep http > $SDIR/LastTabs.csv
