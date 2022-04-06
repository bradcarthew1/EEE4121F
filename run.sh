#!/bin/bash
set -e

time=30

bwnet=2

delay=50

dir=results

for qsize in 100 20; do for cong in "reno" "bbr" "cubic"; do
	echo "Running when queue size = "$qsize
	bwhost=1000
	dir=qsize_$qsize/$cong
	if [ $cong = "cubic" ]; 
	then
	qman="fq"
	else
	qman="pfifo_fast"
	fi
		
	python tcp.py --bw-host=$bwhost --bw-net=$bwnet --delay=$delay --dir=$dir --time=$time --maxq=$qsize --cong=$cong --qman=$qman
	python plot_queue.py -f $dir/q.txt -o $dir/q.png
	python plot_ping.py -f $dir/ping.txt -o $dir/rtt.png
done; done

for cong in "reno" "bbr" "cubic"; do
	bwhost=100
	echo "Running when host bandwidth = "$bwhost
	qsize=100
	dir=bwhost_$bwhost/$cong
	if [ $cong = "cubic" ]; 
	then
	qman="fq"
	else
	qman="pfifo_fast"
	fi

	python tcp.py --bw-host=$bwhost --bw-net=$bwnet --delay=$delay --dir=$dir --time=$time --maxq=$qsize --cong=$cong --qman=$qman
	python plot_queue.py -f $dir/q.txt -o $dir/q.png
	python plot_ping.py -f $dir/ping.txt -o $dir/rtt.png
done
