#!/bin/sh
start=1632002
end=1632162

while [ $start -le $end ]
do
	cp $start.js js/$start.js
	let start++
done
