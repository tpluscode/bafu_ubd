#!/bin/sh
rm target/ubd-all.nt
scripts/utf8.sh
scripts/ubd28.sh
scripts/ubd66.sh
cat target/ubd*.nt > target/ubd-all.nt
