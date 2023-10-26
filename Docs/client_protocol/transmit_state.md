## Game State Control
|data[7:4] |data[3:2]|data[1:0]|Description|
|------|--------|--------|----------|
|xxxx|01|01|Client would start the game.|
|xxxx|10|01|Client would stop the game.|
|xxxx|xx|01|Ignored.|

此类指令处于频道0b01,并用2bit控制游戏开始与结束.

This command is on channel 0b01 and uses 2 bits to control the start and end of the game.

**游戏开始时**,计时器开始计时,机器开始工作,玩家可以通过开发板控制旅行者.
**游戏结束时**,计时器停止计时,机器停止工作,玩家无法再通过开发板控制旅行者.

** When the game starts **, the timer starts, the machine starts working, and the player can control the traveler through the development board.
** At the end of the game **, the timer stops, the machine stops working, and the player can no longer control the Traveler through the development board.

多次重复的游戏开始/结束信号会被客户端自行忽略.
此外,当顾客收到三份菜肴时,游戏会自动结束.

Repeated start/end signals are ignored by the client itself.
In addition, the game will automatically end when the customer receives three dishes.
