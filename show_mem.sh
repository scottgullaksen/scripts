#!/bin/bash

while true; do
	ps -p $1 -o pid=,%mem=,vsz= >> /tmp/mem.log
	gnuplot /tmp/show_mem.plt
	sleep 1
done &
