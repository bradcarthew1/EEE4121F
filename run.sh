#!/bin/bash
set -e

time=30

bwnet=2

delay=50

dir=results

for qsize in 100 20; do
	echo $qsize
	bwhost=1000
	dir=results_$qsize
	
	python tcp.py --bw-host=$bwhost --bw-net=$bwnet --delay=$delay --dir=$dir --time=$time --maxq=$qsize
	python plot_queue.py -f $dir/q.txt -o $dir/q.png
	python plot_ping.py -f $dir/ping.txt -o $dir/rtt.png
done

for bwhost in 1000 100; do
	echo $bwhost
	qsize=100;
	dir=results_$bwhost

	python tcp.py --bw-host=$bwhost --bw-net=$bwnet --delay=$delay --dir=$dir --time=$time --maxq=$qsize
	python plot_queue.py -f $dir/q.txt -o $dir/q.png
	python plot_ping.py -f $dir/ping.txt -o $dir/rtt.png
done
