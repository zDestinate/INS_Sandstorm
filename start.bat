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
set strMapList[14]=Ministry?Scenario=Scenario_Ministry_Checkpoint_Insurgents
set strMapList[15]=Ministry?Scenario=Scenario_Ministry_Checkpoint_Security
set strMapList[16]=Sinjar?Scenario=Scenario_Hillside_Checkpoint_Insurgents
set strMapList[17]=Sinjar?Scenario=Scenario_Hillside_Checkpont_Security

::Gamemode (Please pick one only and comment out the rest with :: Some will only work with specific map)
::set strGameMode=Firefight
::set strGameMode=Frontline
::set strGameMode=Occupy
::set strGameMode=Skirmish
::set strGameMode=CaptureTheBase
::set strGameMode=TeamDeathmatch
::set strGameMode=Filming
::set strGameMode=Mission
::set strGameMode=Checkpoint
::set strGameMode=CheckpointHardcore
::set strGameMode=CheckpointTutorial
::set strGameMode=Operations
::set strGameMode=Outpost

::Mutator list
::AllYouCanEat
::AntiMaterielRiflesOnly
::BoltActionsOnly
::Broke
::BulletSponge
::Competitive
::CompetitiveLoadouts
::FastMovement
::Frenzy
::Guerrillas
::Hardcore
::HeadshotOnly
::HotPotato
::LockedAim
::LowGravity
::NoAim
::PistolsOnly
::ShotgunsOnly
::SlowCaptureTimes
::SlowMovement
::SoldierOfFortune
::SpecialOperations
::Strapped
::Ultralethal
::Vampirism
::Warlords

::Ruleset (Please pick one only and comment out the rest with :: Some might not work)
::Using Ruleset will override some of your game.ini config. Expect some config not to work
::set strRuleSet=CheckpointFrenzy
::set strRuleSet=CompetitiveFirefight
::set strRuleSet=CompetitiveTheater
::set strRuleSet=MatchmakingCasual
::set strRuleSet=OfficialRules

::RNG to pick random map
set /A nRng=%RANDOM% %%17
setlocal enableDelayedExpansion
set strMap=!strMapList[%nRng%]!

::GSLTToken from https://steamcommunity.com/dev/managegameservers with App ID 581320
Insurgency\Binaries\Win64\InsurgencyServer-Win64-Shipping.exe %strMap%?port=27102?queryport=27131?MaxPlayers=10?Mutator=Hardcore,FastMovement -log -AdminList=Admins -MapCycle=MapCycle -GameStats -GSLTToken=XXXXXXXXXXXXXXXXXXXXXXXXXXXXX -EnableCheats -NoEAC
