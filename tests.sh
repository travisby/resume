#!/bin/bash
set -euo pipefail

pages=$(pdfinfo resume.pdf | grep Pages | awk '{print $2}')
if [ $pages -gt 2 ]; then
	echo "Too many pages! ($pages, expecting <= 2)"
	exit 1
fi

exit 0
