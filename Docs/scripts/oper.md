# Action Instruction

 此类指令具有opcode 001, 会直接让厨师执行相关动作.

The action instruction has opcode 001. Such instructions direct the cook to perform the action.

| op(func) | Format | Description|
|------|-------|----------|
| 001(00) | get [i_num] | Move to the machine with ID [inum], then get an item.|
| 001(01) | put [i_num] | Move to the machine with ID [inum], then put an item.|
| 001(10) | interact [i_num] | Move to the machine with ID [inum], then interact it.|
| 001(11) | throw [i_num] | No need to move, throw item to machine with ID [inum].|

需要注意的是,对于put,get,interact来说,一条指令对应四个步骤:
1. 将目标设为指定机器.
2. 让厨师移动到目标机器跟前.
3. 等待厨师完成移动.
4. 执行指令需要的操作.

It's important to note that for *put,get,interact*, there are four steps per instruction:
1. Set the target to the specified machine.
2. Have the cook move to the target machine.
3. Wait for the cook to finish moving.
4. Perform operations required by the command.

## Examples

```
get 2
put 8
```

执行以上脚本时,旅行者应走到机器2面前拿取物品,然后走到机器8前放下物品.

To execute the above script, the traveler should walk to machine 2 to pick up the item, and then walk to machine 8 to drop the item.


