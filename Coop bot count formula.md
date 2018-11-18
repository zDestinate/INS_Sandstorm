# Formula for Coop bot count
**Each checkpoint bot count**<br>
MaximumEnemies + ((MaximumEnemies * ObjectiveTotalEnemyRespawnMultiplierMax) - (MaximumEnemies * (1.0 - RespawnDPR))) = Maximum TotalBot for normal checkpoint with Max multiplier<br><br>
MinimumEnemies + ((MinimumEnemies * ObjectiveTotalEnemyRespawnMultiplierMax) - (MinimumEnemies * (1.0 - RespawnDPR))) = Minimum TotalBot for normal checkpoint with Max multiplier<br><br><br>

**Each checkpoint counter attack bot count**<br>
(MaximumEnemies - MinimumEnemies) / MaxPlayers * (AlivePlayers - 1) + MinimumEnemies = TotalAmountOfBotForCounterattack<br><br>
TotalAmountOfBotForCounterattack + (TotalAmountOfBotForCounterattack * ObjectiveTotalEnemyRespawnMultiplierMax - TotalAmountOfBotForCounterattack * (1.0 - CounterAttackRespawnDPR) = Total amount of bots for counter attack with max multiplier<br><br>

**NOTE:** If your calculation have decimal in it, make sure to round it to a whole number. Also with the respawn delay, the bot count will increase more than this formula. This formula is base on bot instant respawn. With respawn delay, the bot that player kill during the delay, it will add to respawn.