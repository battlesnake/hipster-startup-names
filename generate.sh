#!/bin/bash
perl >list </usr/share/dict/words -ne 'print if not /[A-Z]/ and s/(?<![aeiou])er$/r.io/'
