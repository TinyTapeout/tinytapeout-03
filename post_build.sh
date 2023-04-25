#!/bin/bash
set -e
make compress

./tt/configure.py --update-image
./tt/tt_annotate.py
./tt/configure.py --dump-markdown datasheet.md --dump-pdf datasheet.pdf
./tt/configure.py --build-hugo-content ~/work/asic-workshop/tinytapeout/tinytapeout_www/content/runs/tt03/
./tt/configure.py --metrics

git add spef/ gds/ lef/ verilog/gl/ verilog/rtl/
git add -u .
