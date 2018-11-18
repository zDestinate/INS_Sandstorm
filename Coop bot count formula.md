#Fomula for Coop bot count
**Each checkpoint bot count**
MaximumEnemies + ((MaximumEnemies * ObjectiveTotalEnemyRespawnMultiplierMax) - (MaximumEnemies * RespawnDPR)) = Maximum TotalBot for normal checkpoint with Max multiplier<br>
MinimumEnemies + ((MinimumEnemies * ObjectiveTotalEnemyRespawnMultiplierMax) - (MinimumEnemies * RespawnDPR)) = Minimum TotalBot for normal checkpoint with Max multiplier<br><br>

**Each checkpoint counter attack bot count**
(MaximumEnemies - MinimumEnemies) / 8 * (AlivePlayers - 1) + MinimumEnemies = TotalAmountOfBotForCounterattack<br>
TotalAmountOfBotForCounterattack + (TotalAmountOfBotForCounterattack * ObjectiveTotalEnemyRespawnMultiplierMax - TotalAmountOfBotForCounterattack * CounterAttackRespawnDPR) = Total amount of bots for counter attack with max multiplier