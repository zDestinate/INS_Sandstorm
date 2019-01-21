#!/bin/bash
strMapList=()
strMapList+=("Canyon?Scenario=Scenario_Crossing_Checkpoint_Insurgents")
strMapList+=("Canyon?Scenario=Scenario_Crossing_Checkpoint_Security")
strMapList+=("Farmhouse?Scenario=Scenario_Farmhouse_Checkpoint_Insurgents")
strMapList+=("Farmhouse?Scenario=Scenario_Farmhouse_Checkpoint_Security")
strMapList+=("Mountain?Scenario=Scenario_Summit_Checkpoint_Insurgents")
strMapList+=("Mountain?Scenario=Scenario_Summit_Checkpoint_Security")
strMapList+=("OilField?Scenario=Scenario_Refinery_Checkpoint_Insurgents")
strMapList+=("OilField?Scenario=Scenario_Refinery_Checkpoint_Security")
strMapList+=("Precinct?Scenario=Scenario_Precinct_Checkpoint_Insurgents")
strMapList+=("Precinct?Scenario=Scenario_Precinct_Checkpoint_Security")
strMapList+=("Town?Scenario=Scenario_Hideout_Checkpoint_Insurgents")
strMapList+=("Town?Scenario=Scenario_Hideout_Checkpoint_Security")

#set random seed
RANDOM=$$$(date +%N)

#set map
strMap=${strMapList[$RANDOM % ${#strMapList[@]}]}

./Insurgency/Binaries/Linux/InsurgencyServer-Linux-Shipping $strMap?port=27102?queryport=27131?MaxPlayers=50 -log -multihome=108.61.136.220 -AdminList=Admins -MapCycle=MapCycle -EnableCheats -NoEAC