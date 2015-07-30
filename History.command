SDIR="$( cd "$( dirname "$0" )" && pwd )"
cp -f ~/Library/Application\ Support/Google/Chrome/Default/History $SDIR
/usr/bin/sqlite3 $SDIR/History > $SDIR/History.csv <<EOF
.mode csv
select * from urls;
EOF
osascript -e 'tell application "Terminal" to quit' &
exit
