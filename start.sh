#!/bin/bash

#Really useful for crontab
#Everytime the server start up or restart, it will start with a random map

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
strMapList+=("Compound?Scenario=Scenario_Outskirts_Checkpoint_Insurgents")
strMapList+=("Compound?Scenario=Scenario_Outskirts_Checkpoint_Security")
strMapList+=("Ministry?Scenario=Scenario_Ministry_Checkpoint_Insurgents")
strMapList+=("Ministry?Scenario=Scenario_Ministry_Checkpoint_Security")

#Gamemode (Please pick one only and comment out the rest with hashtag)
#strGameMode="Firefight"
#strGameMode="Frontline"
#strGameMode="Occupy"
#strGameMode="Skirmish"
#strGameMode="CaptureTheBase"
#strGameMode="TeamDeathmatch"
#strGameMode="Filming"
#strGameMode="Mission"
strGameMode="Checkpoint"
#strGameMode="CheckpointHardcore"
#strGameMode="CheckpointTutorial"
#strGameMode="Operations"
#strGameMode="Outpost"

#Ruleset (Please pick one only and comment out the rest with hashtag. Some might not work)
#Using Ruleset will override some of your game.ini config. Expect some config not to work
#strRuleSet="CheckpointFrenzy"
#strRuleSet="CompetitiveFirefight"
#strRuleSet="CompetitiveTheater"
#strRuleSet="MatchmakingCasual"
strRuleSet="OfficialRules"

#set random seed
RANDOM=$$$(date +%N)

#set map
strMap=${strMapList[$RANDOM % ${#strMapList[@]}]}

./Insurgency/Binaries/Linux/InsurgencyServer-Linux-Shipping $strMap?port=27102?queryport=27131?MaxPlayers=20?game=$strGameMode -log -AdminList=Admins -MapCycle=MapCycle -ruleset=$strRuleSet -GSLTToken=XXXXXXXXXXXXXXXXXXXXXXXX -GameStats -EnableCheats -NoEAC
