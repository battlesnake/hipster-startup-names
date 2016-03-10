HIPSTER STARTUP NAMES
=====================

Author: Mark K Cowan, mark@battlesnake.co.uk, github.com/battlesnake

Basically, just clone this pile of crap then run:

	./generate.sh

Or to run as web server on port 1234:

	port=1234 ./server.sh

## Le scripts

### generate.sh: generates the name list

    perl >list </usr/share/dict/words -ne 'print if not /[A-Z]/ and s/(?<![aeiou])er$/r.io/'

### select.sh: selects a random name from the name list

    grep -v '#' list | sort -R | head -n1
