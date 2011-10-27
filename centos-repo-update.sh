rsync='rsync -avrt --progress --bwlimit=1536 --delete'

mirror="rsync://mirror.aarnet.edu.au/centos"

verlist="5 5.6 5.7"
archlist="i386 x86_64"
baselist="addons centosplus contrib cr extras fasttrack os updates"
local="/repo/centos"

for ver in $verlist
do
	remote="$mirror/$ver"
	$rsync --exclude="*.iso" "$remote" "$local"
done
