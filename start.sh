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
strMapList+=("Sinjar?Scenario=Scenario_Hillside_Checkpoint_Insurgents")
strMapList+=("Sinjar?Scenario=Scenario_Hillside_Checkpont_Security")

#Gamemode (Please pick one only and comment out the rest with hashtag)
#strGameMode="Firefight"
#strGameMode="Frontline"
#strGameMode="Occupy"
#strGameMode="Skirmish"
#strGameMode="CaptureTheBase"
#strGameMode="TeamDeathmatch"
#strGameMode="Filming"
#strGameMode="Mission"
#strGameMode="Checkpoint"
#strGameMode="CheckpointHardcore"
#strGameMode="CheckpointTutorial"
#strGameMode="Operations"
#strGameMode="Outpost"

#Mutator list
#AllYouCanEat
#AntiMaterielRiflesOnly
#BoltActionsOnly
#Broke
#BulletSponge
#Competitive
#CompetitiveLoadouts
#FastMovement
#Frenzy
#Guerrillas
#Hardcore
#HeadshotOnly
#HotPotato
#LockedAim
#LowGravity
#NoAim
#PistolsOnly
#ShotgunsOnly
#SlowCaptureTimes
#SlowMovement
#SoldierOfFortune
#SpecialOperations
#Strapped
#Ultralethal
#Vampirism
#Warlords

#Ruleset (Please pick one only and comment out the rest with hashtag. Some might not work)
#Using Ruleset will override some of your game.ini config. Expect some config not to work
#strRuleSet="CheckpointFrenzy"
#strRuleSet="CompetitiveFirefight"
#strRuleSet="CompetitiveTheater"
#strRuleSet="MatchmakingCasual"
#strRuleSet="OfficialRules"

#set random seed
RANDOM=$$$(date +%N)

#set map
strMap=${strMapList[$RANDOM % ${#strMapList[@]}]}

#GSLTToken from https://steamcommunity.com/dev/managegameservers with App ID 581320
./Insurgency/Binaries/Linux/InsurgencyServer-Linux-Shipping $strMap?port=27102?queryport=27131?MaxPlayers=20 -mutators=Hardcore,FastMovement -log -AdminList=Admins -MapCycle=MapCycle -GameStats -GSLTToken=XXXXXXXXXXXXXXXXXXXXXXXX -EnableCheats -NoEAC
