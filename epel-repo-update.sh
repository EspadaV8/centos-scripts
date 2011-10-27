rsync='rsync -avrt --progress --bwlimit=512 --delete'

mirror="rsync://mirror.as24220.net/epel"

verlist="5 5Server"
archlist="i386 x86_64"
local="/repo/epel"

for ver in $verlist
do
	remote="$mirror/$ver"
	$rsync --exclude="*.iso" --exclude="*/ppc/*" "$remote" "$local"
done
