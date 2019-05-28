@echo off

::Map list
set strMapList[0]=Canyon?Scenario=Scenario_Crossing_Checkpoint_Insurgents
set strMapList[1]=Canyon?Scenario=Scenario_Crossing_Checkpoint_Security
set strMapList[2]=Farmhouse?Scenario=Scenario_Farmhouse_Checkpoint_Insurgents
set strMapList[3]=Farmhouse?Scenario=Scenario_Farmhouse_Checkpoint_Security
set strMapList[4]=Mountain?Scenario=Scenario_Summit_Checkpoint_Insurgents
set strMapList[5]=Mountain?Scenario=Scenario_Summit_Checkpoint_Security
set strMapList[6]=OilField?Scenario=Scenario_Refinery_Checkpoint_Insurgents
set strMapList[7]=OilField?Scenario=Scenario_Refinery_Checkpoint_Security
set strMapList[8]=Precinct?Scenario=Scenario_Precinct_Checkpoint_Insurgents
set strMapList[9]=Precinct?Scenario=Scenario_Precinct_Checkpoint_Security
set strMapList[10]=Town?Scenario=Scenario_Hideout_Checkpoint_Insurgents
set strMapList[11]=Town?Scenario=Scenario_Hideout_Checkpoint_Security
set strMapList[12]=Compound?Scenario=Scenario_Outskirts_Checkpoint_Insurgents
set strMapList[13]=Compound?Scenario=Scenario_Outskirts_Checkpoint_Security

::Gamemode (Please pick one only and comment out the rest with ::)
::set strGameMode=Firefight
::set strGameMode=Frontline
::set strGameMode=Occupy
::set strGameMode=Skirmish
::set strGameMode=CaptureTheBase
::set strGameMode=TeamDeathmatch
::set strGameMode=Filming
::set strGameMode=Mission
::set strGameMode=Checkpoint
set strGameMode=CheckpointHardcore
::set strGameMode=CheckpointTutorial
::set strGameMode=Operations
::set strGameMode=Outpost

::RNG to pick random map
set /A nRng=%RANDOM% %%13
setlocal enableDelayedExpansion
set strMap=!strMapList[%nRng%]!

Insurgency\Binaries\Win64\InsurgencyServer-Win64-Shipping.exe %strMap%?port=27102?queryport=27131?MaxPlayers=10?MaxSpectators=10?AIDifficulty=1.0?Game=%strGameMode% -log -AdminList=Admins -MapCycle=MapCycle -EnableCheats -NoEAC