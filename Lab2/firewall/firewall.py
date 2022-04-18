

from pox.core import core
import pox.openflow.libopenflow_01 as of
from pox.lib.revent import *
from pox.lib.util import dpidToStr
from pox.lib.addresses import EthAddr
from collections import namedtuple
import os
# TODO Add your imports here 


log = core.getLogger()
policyFile = "%s/pox/pox/misc/firewall-policies.csv" % os.environ[ 'HOME' ]

#TODO Add your global variables here
file = open(policyFile,'r')
lines = len(file.readlines())-1
file.close()

file = open(policyFile,'r')
file.readline()
contents = []
for i in range(lines):
    contents.append(file.readline()[2:19])
printf(contents)
file.close() 



class Firewall (EventMixin):

    def __init__ (self):
        self.listenTo(core.openflow)
        log.debug("Enabling Firewall Module")

    def _handle_ConnectionUp (self, event):
        #TODO Add your logic here
        for address in contents:
		block = of.ofp_match()
		block.dl_src = EthAddr(address)
		flow_mod = of.ofp_flow_mod()
		flow_mod.match = block
		event.connection.send(flow_mod)

        log.debug("Firewall rules installed on %s", dpidToStr(event.dpid))

def launch ():
    #    Starting the Firewall module

    core.registerNew(Firewall)
