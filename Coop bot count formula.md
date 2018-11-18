# Fomula for Coop bot count
**Each checkpoint bot count**<br>
MaximumEnemies + ((MaximumEnemies * ObjectiveTotalEnemyRespawnMultiplierMax) - (MaximumEnemies * RespawnDPR)) = Maximum TotalBot for normal checkpoint with Max multiplier<br><br>
MinimumEnemies + ((MinimumEnemies * ObjectiveTotalEnemyRespawnMultiplierMax) - (MinimumEnemies * RespawnDPR)) = Minimum TotalBot for normal checkpoint with Max multiplier<br><br><br>

**Each checkpoint counter attack bot count**<br>
(MaximumEnemies - MinimumEnemies) / MaxPlayers * (AlivePlayers - 1) + MinimumEnemies = TotalAmountOfBotForCounterattack<br><br>
TotalAmountOfBotForCounterattack + (TotalAmountOfBotForCounterattack * ObjectiveTotalEnemyRespawnMultiplierMax - TotalAmountOfBotForCounterattack * CounterAttackRespawnDPR) = Total amount of bots for counter attack with max multiplier