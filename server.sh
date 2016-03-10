#!/bin/bash

set +e -uo pipefail

exec </dev/null >/dev/null 2>/dev/null

declare -ra strings=(

		"Mark's hipster startup name generator"

		'<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">'

		'<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">'

		"Hipster startup name generator"

)

while true; do
	{
		printf "HTTP/1.0 200 Your startup will totally suck\nContent-Type: text/html\n\n<!doctype html><html lang=\"en\"><head><meta charset=\"utf-8\"><title>%s</title>%s%s</head><body><nav class=\"navbar navbar-inverse navbar-fixed-top\"><div class=\"container\"><a class=\"navbar-brand\">%s</a></div></nav><div class=\"container\"><div class=\"jumbotron\"><h1>%s</h1></div><div class=\"row\">%s</div></div></body></html>\n\n" \
		"${strings[@]}" \
		"$(./select.sh)" \
		'By <a href="http://hackology.co.uk">Mark K Cowan</a>, teh codez r on <a href="https://github.com/battlesnake/hipster-startup-names">Github</a>.'
	} | nc -l -p "${port:-8080}" -c
done
