# Action Instruction

 此类指令具有opcode 010, 能够改变脚本的执行顺序(跳转指令).

This type of instruction has opcode 010 and can change the execution order of the script (jump execution).

| op(func) | Format | Description|
|------|-------|----------|
| 010(00) | jumpif [i_num] [signal] | Jump [i_num] lines if corresponding signal is 1.|
| 010(01) | jumpifn [i_num] [signal] | Jump [i_num] lines if corresponding signal is 0.|

在编写指令时, 我们并不会直接填写[i_sign]数字,而是填写一些具有实际含义的[signal]. [signal]和[i_sign]的对应关系如下:

|[signal]|[i_sign]|
|------|-----|
|player_ready|0|
|player_hasitem|1|
|target_ready|2|
|target_hasitem|3|

例如, `jumpif 6, player_hasitem`指令被解释后`i_sign=1, i_num=6`, 执行该指令时,如果玩家手里有物品,跳转6行.

For example, after the 'jumpif 6, player_hasitem' is interpreted, 'i_sign=1, i_num=6', executing this directive, if the player has an item in his hand, jump 6 lines.

## Examples

```
jumpifn 2, player_hasitem
throw 20
get 2

```

执行以上脚本时,旅行者手里如果有东西(不跳转指令),就会先把东西扔到机器20,然后拿取机器2的物品. 否则直接拿机器2的物品.

When executing the above script, if the traveler has something in his hand (without skipping instructions), he will first drop it to machine 20 and then take the item from machine 2. Otherwise take the items from machine 2 directly.


