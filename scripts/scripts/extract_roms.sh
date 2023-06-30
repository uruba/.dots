#!/bin/bash

find . -name "*.7z" -type f -print0 | xargs -0I{} 7z x {} -oextracted -y

find . -regex "\.\/extracted\/.*\.\(cue\|iso\|gdi\)" -print0 | xargs -0I{} sh -c 'chdman createcd -i "{}" -o "`basename "{}"`.chd"'
