#!/bin/bash

# Note: Mininet must be run as root.  So invoke this shell script
# using sudo.

printf "id,mac\n1,00:00:00:00:00:05" > ../../pox/pox/misc/firewall-policies.csv
gnome-terminal --tab --command="bash -c '~/pox/pox.py forwarding.l2_learning misc.firewall; $SHELL'"
sudo python sdn.py

printf "id,mac\n1,00:00:00:00:00:01\n2,00:00:00:00:00:03\n3,00:00:00:00:00:05" > ../../pox/pox/misc/firewall-policies.csv
gnome-terminal --tab --command="bash -c '~/pox/pox.py forwarding.l2_learning misc.firewall; $SHELL'"
sudo python sdn.py

printf "id,mac\n1,00:00:00:00:00:01\n2,00:00:00:00:00:03\n3,00:00:00:00:00:08\n4,00:00:00:00:00:04" > ../../pox/pox/misc/firewall-policies.csv
gnome-terminal --tab --command="bash -c '~/pox/pox.py forwarding.l2_learning misc.firewall; $SHELL'"
sudo python sdn.py
