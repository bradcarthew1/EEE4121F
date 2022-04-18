# EEE4121F: Module B Lab 2
## Part 1: Creating a Firewall Control Plane Application
The steps below explain how to replicate the results from the experiment:
1. Make sure the firewall.py file and the firewall-policies.csv file are in the misc folder of the pox directory.
3. Run "chmod +x sdn.py" to compile the sdn.py file.
4. Run "chmod +x run.sh" to compile the run.sh file.
5. Run "sudo ./run.sh" to run all the experiments using the shell file.
6. A second terminal should show up, which is running the pox.py file together with the l2_learning.py file and the firewall.py file.
7. In the initial terminal Mininet will open, type "pingall" and wait for the command to finish executing.
8. Once the command has executed, force stop the pox.py file running in the second terminal (using "control c" on your keyboard") and close the terminal using "exit".
9. In the initial terminal, in the Mininet interface, type "exit" to close Mininet.
10. Once Mininet has closed the next experiment will begin.
11. Follow steps from 6-9, for the next two procedings until the run.sh file is halted.

## Part 2: Building a Simple Router in the Data Plane
Follow the instructions laid out in the lab manual.
