SDIR="$( cd "$( dirname "$0" )" && pwd )"
strings ~/Library/Application\ Support/Google/Chrome/Default/Current\ Tabs | grep http > $SDIR/CurrentTabs.csv
osascript -e 'tell application "Terminal" to quit' &
exit
