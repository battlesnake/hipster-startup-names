HIPSTER STARTUP NAMES
=====================

Author: Mark K Cowan, mark@battlesnake.co.uk, github.com/battlesnake

Basically, just clone this pile of crap then run ./generate.sh

### generate.sh: generates the name list

    perl >list </usr/share/dict/words -ne 'print if not /[A-Z]/ and s/(?<![aeiou])er$/r.io/'

### select.sh: selects a random name from the name list

    grep -v '#' list | sort -R | head -n1
