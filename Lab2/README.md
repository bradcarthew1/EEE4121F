# EEE4121F: Module B Lab 2
## Part 1: Creating a Firewall Control Plane Application
The steps below explain how to replicate the results from the experiment:
1. Run "chmod +x sdn.py" to compile the sdn.py file.
2. Run "chmod +x run.sh" to compile the run.sh file.
3. Run "sudo ./run.sh" to run all the experiments using the shell file.
4. A second terminal should show up, which is running the pox.py file together with the l2_learning.py file and the firewall.py file.
5. In the initial terminal, in the Mininet interface, type "pingall" and wait for the command to finish executing.
6. Once the command is executed, force stop the pox.py file running in the second terminal, and exit the terminal using "exit".
7. In the initial terminal, in the Mininet interface, type "exit" to close Mininet.
8. Once Mininet is closed the following experiment will execute.
9. Follow steps from 4-7, for the next two procedings until the run.sh file is halted.

## Part 2: Building a Simple Router in the Data Plane
The steps below explain how to replicate the results from the experiment:

1. If you haven't already, install the statistics library using "sudo pip install statistics"
2. Run "chmod +x tcp.py" to compile the tcp.py file
3. Run "chmod +x run.sh" to compile the run.sh shell file
4. Run "sudo ./run.sh" to run all the experiments
5. Find the results in the bwhost_100, qsize_100 and qsize_20 files. Where the bwhost_100 file contains the results from when the host bandwidth is set to 100 Mbps, qsize_100 file from when the queue size is set to 20 and qsize_100 from when the queue size is set to 100.
6. Each file contains results for the Reno, BBR and Cubic algorithms and these files each contain .png files and .txt files containing the queue size at the bottleneck and the RTT reported by ping.
7. The average time taken to fetch index.html and the standard deviation can be seen as output in the terminal.
