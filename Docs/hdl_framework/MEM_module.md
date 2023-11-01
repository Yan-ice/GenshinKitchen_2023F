# Script Memory Module

我们准备好了一个用于存放脚本的RAM,并处理好了脚本加载部分.

```
module ScriptMem(
  input        clock,             // connect to the same wire of UART module
               reset,             // connect to the same wire of UART module
  input  [7:0] dataOut_bits,      // connect to the same wire of UART module
  input        dataOut_valid,     // connect to the same wire of UART module
  
  output       script_mode,  // If script_mode is 1, you should ignore the dataOut_bits from UART module
  input [7:0] pc,      //program counter.
  output [15:0] script //instructions from pc.
);
```

前四个接口直接和UART module的对应接口连接,ScriptMem将会通过这些接口加载脚本. 

The first four interfaces connect directly to the corresponding interfaces on the UART module, and ScriptMem will load scripts through these interfaces.

script_mode信号为1时,代表正在加载脚本状态,此时你不应该尝试处理dataOut_bits的内容,更不应该读取该模块的script信号.
script_mode信号为0时,你可以提供pc信号(作为地址), 并从script中获得该地址对应的指令.

When the script_mode signal is 1, it means that the script state is being loaded, and you should not attempt to process the contents of the dataOut_bits, much less read the script signal of the module.
When the script_mode signal is 0, you can provide the pc signal (as the address) and get the corresponding instruction from the script.

注意: pc的地址是以byte(8bit)为单位的. 由于一个指令占2byte(16bit), 你应该时刻保持pc的值为2的倍数. **在顺序执行指令时, 请执行 $pc <= pc + 2$ !**

Note: pc addresses are in bytes (8bit). Since an instruction takes up 2byte(16bit), you should always keep the value of the pc as a multiple of 2. **When executing instructions sequentially, execute $pc <= pc + 2$!**

