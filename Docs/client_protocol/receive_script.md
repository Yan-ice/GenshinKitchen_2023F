## Feedback Signal
|data[7:2]|data[1:0]|Description|
|------|---------|--------|
|xxxxxx|10|Switch to **script loading mode** with script size xxxxxx10 bits.|

此类指令处于频道0b10,在接收到该条信息时,你将会切换到脚本加载模式,且脚本大小恰好为xxxxxx10 byte(由client保证).

This type of instruction is on channel 0b10, and upon receiving this message, you will be switched to script load mode and the script size is exactly xxxxxx10 byte(guaranteed by client).

进入脚本加载模式后,接下来接收端收到的xxxxxx10 byte数据都是脚本,他们不应该再被接收端正常解析,  而是应该被存入脚本内存中.

After entering the script loading mode, the following xxxxxx10 bytes of data received by the receiver are scripts, and they should not be parsed by the receiver normally, but should be stored in the script memory.

幸运的是, **我们在框架中为你处理好了脚本协议.** 
如果你对此不感兴趣的话, 这部分你可以完全不考虑~

Fortunately, **we have taken care of the scripting protocol for you in the framework.** 
If that doesn't interest you, you can skip that part altogether!
