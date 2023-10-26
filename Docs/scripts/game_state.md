# Action Instruction

 此类指令具有opcode 100, 处理这些指令时,开发办应发送信号更改游戏状态.

Such instructions have opcode 100, and when processing these instructions, the developer should send a signal to change the game state.

| op(func) | Format | Description|
|------|-------|----------|
| 100(01) | game start | game should start.|
| 100(10) | game end | game should over.|


## Examples

```
game start
get 2
game end
```

(初始状态下,游戏未开始) 执行以上脚本时,首先会开始游戏,旅行者应走到机器2面前拿取物品,然后结束游戏.

(In the initial state, the game did not start) When executing the above script, the game will first start, the traveler should go to machine 2 to get the item, and then end the game.
