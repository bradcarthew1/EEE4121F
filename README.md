# EEE4121F: Module B Lab 1
The steps below explain how to replicate the results from the experiment and where to find the results:

1. If you haven't already, install the statistics library using "sudo pip install statistics"
2. Run "chmod +x tcp.py" to compile the tcp.py file
3. Run "chmod +x run.sh" to compile the run.sh shell file
4. Run "sudo ./run.sh" to run all the experiments
5. Find the results in the bwhost_100, qsize_100 and qsize_20 files. Where the bwhost_100 file contains the results from when the host bandwidth is set to 100 Mbps, qsize_100 file from when the queue size is set to 20 and qsize_100 from when the queue size is set to 100.
6. Each file contains results for the Reno, BBR and Cubic algorithms and these files each contain .png files and .txt files containing the queue size at the bottleneck and the RTT reported by ping.
7. The average time taken to fetch index.html and the standard deviation can be seen as output in the terminal.


