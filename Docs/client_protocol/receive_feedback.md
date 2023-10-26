## Feedback Signal
|data[7:6]|data[5:2]|data[1:0]|Description|
|------|---------|--------|----------|
|00|xxxx|01|Traveler targeting on specific machine with ID xxxxxx.|

此类指令处于频道0b01,在接收到该条信息时,你可以解析2~5bit来了解厨房的状态.
每一bit的具体信息如下表.

This type of instruction is on channel 0b01, and when you receive this message, you can parse 2 to 5 bits to understand the state of the kitchen.
The details of each bit are as follows.

|Signal|Description|
|------|---------|
|data[2]|Set(1) when traveler is in front of target machine, otherwise Reset(0).|
|data[3]|Set(1) when traveler has item in hand, otherwise Reset(0).|
|data[4]|Set(1) when target machine is processing, otherwise Reset(0).|
|data[5]|Set(1) when target machine has item, otherwise Reset(0).|
