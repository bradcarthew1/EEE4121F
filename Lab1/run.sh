#!/bin/bash
set -e

t=30

bwnet=2

d=50

dir=results

for qsize in 100 20; do for cong in "reno" "bbr" "cubic"; do
	echo "Running when queue size = "$qsize
	bwhost=1000
	dir=qsize_$qsize/$cong
	if [ $cong = "bbr" ]; 
	then
	qman="fq"
	else
	qman="pfifo_fast"
	fi
		
	./tcpbradly.py --bw-host=$bwhost --bw-net=$bwnet --delay=$d --dir=$dir --time=$t --maxq=$qsize --cong=$cong --qman=$qman
	python plot_queue.py -f $dir/q.txt -o $dir/q.png
	python plot_ping.py -f $dir/ping.txt -o $dir/rtt.png
done; done

for cong in "reno" "bbr" "cubic"; do
	bwhost=100
	echo "Running when host bandwidth = "$bwhost
	qsize=100
	dir=bwhost_$bwhost/$cong
	if [ $cong = "bbr" ]; 
	then
	qman="fq"
	else
	qman="pfifo_fast"
	fi

	./tcpbradly.py --bw-host=$bwhost --bw-net=$bwnet --delay=$d --dir=$dir --time=$t --maxq=$qsize --cong=$cong --qman=$qman
	python plot_queue.py -f $dir/q.txt -o $dir/q.png
	python plot_ping.py -f $dir/ping.txt -o $dir/rtt.png
done
