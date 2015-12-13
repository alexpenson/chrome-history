SDIR="$( cd "$( dirname "$0" )" && pwd )"
cp -f ~/Library/Application\ Support/Google/Chrome/Default/History $SDIR
/usr/bin/sqlite3 -separator $'\t' $SDIR/History > $SDIR/History.csv <<EOF
.mode csv
select datetime(last_visit_time/1000000-11644473600,'unixepoch'),url,title from  urls order by last_visit_time desc
EOF
osascript -e 'tell application "Terminal" to quit' &
exit
