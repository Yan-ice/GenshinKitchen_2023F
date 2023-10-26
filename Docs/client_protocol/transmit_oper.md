## Traveler Operating Machine
|data[7] |data[6:2]|data[1:0]|Description|
|------|--------|--------|----------|
|x|00001|10|Traveler perform **Get** operation to target Machine.|
|x|00010|10|Traveler perform **Put** operation to target Machine.|
|x|00100|10|Traveler perform **Interact** operation to target Machine.|
|x|01000|10|Traveler perform **Move** operation to target Machine.|
|x|10000|10|Traveler perform **Throw** operation to target Machine.|
|x|00000|10|Ignored by Client.|
|x|other|10|**Illegal Case! Avoid it please!** |

此类指令处于频道0b10,并用5bit的One-hot编码控制厨师执行对应的操作.

Such instructions are on channel 0b10 and use a 5-bit One-hot code to control the chef to perform the corresponding operation.


**注意非法情况. 一旦非法情况出现, 我们将会扣分.**

**Be aware of illegal cases. We will deduct your points when they arise.**
