#!/bin/bash

set -e

touch list
cat list >list.tmp
perl </usr/share/dict/words -ne 'print if not /[A-Z]/ and s/(?<![aeiou])er$/r.io/' >>list.tmp
sort -u <list.tmp >list
rm list.tmp
