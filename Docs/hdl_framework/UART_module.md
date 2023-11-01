# UART module

一个封装好的Uart模块已经提供。你无法直接将开发板的操作映射到软件中，所以你需要这样的Uart模块，将开发板的操作传递给软件，再把软件的反馈信号传回开发板。

Here is a provided Uart module. It’s impossible to map your operations on the EGO1 board to the software, hence you need a UART module like this to transmit the operations from the EGO1 board to the software and then relay the software's feedback signals back to the EGO1 board. 

```
module UART(
  input        clock,             // uart clock. Please use 16 x BaudRate. (such as: 9600 * 16 = 153600Hz)
               reset,             // reset on high.
               io_pair_rx,        // rx, connect to R5 pin please
  input  [7:0] io_dataIn_bits,    // (a) byte from DevelopmentBoard => GenshinKitchen
  output       io_pair_tx,        // tx, connect to T4 pin please
               io_dataIn_ready,   // referring (a) £»pulse 1 after a byte tramsmit success.
           reg io_dataOut_valid,  // referring (b)
  output reg [7:0] io_dataOut_bits    // (b) byte from GenshinKitchen => DevelopmentBoard, only available if io_dataOut_valid=1
);

```

在你设计的模块中，你需要控制i_data_bit，这是Uart向软件发送的8个比特数据。而软件返回给Uart的8个比特数据存放在o_data_bit中（output_valid=1时有效），你需要接收该数据并使用该数据控制你程序的行为。

In this module, you should modify i_data_bit which is the 8-bits-data send to software by Uart. The 8-bits-data returned to Uart by software is in o_data_bit (only available when output_valid=1), which should be received to control your code.

你可能会需要用到时钟分频，为你的Uart模块提供合适的时间信号，即clock信号。这个时钟的频率大致为Uart比特率的16倍，且误差小于1%。例如软件中默认比特率为9600，那么Uart模块的时钟频率应当为153600Hz。

You may need a new clock with a divided frequency, which can provide a correct time signal to Uart. The clock frequency for this UART module should be approximately 16 times the UART bit rate, with an error of less than 1%. For example, the default bit rate in the software is 9600, then the UART module's clock frequency should be 153600 Hz.
