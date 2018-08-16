#!/bin/bash
set -euo pipefail

pages=$(pdfinfo resume.pdf | grep Pages | awk '{print $2}')
if [ $pages -gt 1 ]; then
	echo "Too many pages! ($pages, expecting <= 1)"
	exit 1
fi

exit 0
