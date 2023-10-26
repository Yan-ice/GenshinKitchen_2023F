# Action Instruction

 此类指令具有opcode 001, 会让程序执行等待若干时间,或等待某种信号.

The action instruction has opcode 011. Such instructions will make the program execution wait for a certain amount of time, or wait for some signal.

| op(func) | Format | Description|
|------|-------|----------|
| 011(00) | wait [i_num] | Wait about [inum]*100 ms.|
| 011(01) | waituntil [signal] | Wait till corresponding signal is 1.|

在编写指令时, 我们并不会直接填写[i_sign]数字,而是填写一些具有实际含义的[signal]. [signal]和[i_sign]的对应关系如下:

|[signal]|[i_sign]|
|------|-----|
|player_ready|0|
|player_hasitem|1|
|target_ready|2|
|target_hasitem|3|

例如, `waituntil target_ready`指令被解释后`i_sign=2`, 执行该指令时,一直等待直到target_ready为1.

For example, after the instruction `waituntil target_ready` is interpreted, `i_sign=2`, execution of the instruction will waituntil target_ready is 1.

## Examples

```
interact 7
waituntil target_ready
```

执行以上脚本时,旅行者会一直交互机器7(石磨),直到机器完成加工.

When executing the above script, the traveler will continue to interact with machine 7(stone mill) until the machine has finished processing.
