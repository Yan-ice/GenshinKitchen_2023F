## Traveler Targeting Machine
|data[7:2]|data[1:0]|Description|
|------|--------|----------|
|xxxxxx|11|Traveler targeting on specific machine with ID xxxxxx.|

此类指令处于频道0b11并传入一个6bit操作数,厨师会将自己的目标机器设为该操作数.

This type of instruction is on channel 0b11 and passes in a 6bit operand, which the chef sets to his target machine.

操作数为0会被客户端忽略, 但操作数大于20会被视为非法情况.

An operand of 0 is ignored by the client. An operand greater than 20 is an illegal case.


**注意非法情况. 一旦非法情况出现, 我们将会扣分.**

**Be aware of illegal cases. We will deduct your points when they arise.**
