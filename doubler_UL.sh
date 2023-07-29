#!/bin/bash
# you can create a file using head -c 4KB /dev/urandom > file.txt command
tmpFile=/tmp/tmp_doubler.txt
read File
DUfile=$(du -k "$File" | cut -f1)
until [ "$DUfile" -gt 1024 ]; do
	dd if="$File" of="$tmpFile" bs=1K > /dev/null 2>&1
	dd if="$tmpFile" of="$File" bs=1K conv=notrunc oflag=append > /dev/null 2>&1
# this works only for non binary file
# cat "$File" > "$tmpFile"; cat "$tmpFile" >> "$File"
	DUfile=$(du -k "$File" | cut -f1)
	echo "Filesize: $DUfile"
done
rm -rf $tmpFile
