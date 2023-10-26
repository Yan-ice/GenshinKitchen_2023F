# Introduction

厨房脚本由一条条16bit的指令组成. 我们定义了一套指令规范,且客户端中内置了一个对应的脚本解释器. 
在本章节中,我们会全面地介绍它们.

The script consists of 16-bit instructions. We defined a instruction specification, and a corresponding script interpreter was built into the client.
In this section, we will cover them all.

你们要做的是了解怎么写解释前的脚本,以及让开发板正确执行解释后的脚本(机器码).

What you need to do is to read the specification, understand how to write the script before interpretation, and make the development board correctly execute the script after interpretation (machine code).


# Instruction Structure

|      | inst[15:8] | inst[7:5] | inst[4:3] | inst[2:0] |
|------|-------|----------|--------|----|
|Name  | Immediate Number| Signal Number | Function Code |Operation Code |
|Alias  | i_num | i_sign | func | op_code |


**op_code**用于确定指令的基本类型，而**func_code**用于确定类型下的具体操作。

**op_code** is used to determine the basic type of the instruction, while **func_code** is used to determine the specific operation under a type.

**i_sign**和**i_num**均是指令们所需要的参数.

**i_sign** and **i_num** are the parameters required by the instructions.


# Instruction Set
基于不同op_code和func_code,指令包含以下类型:

Depending on op_code and func_code, directives contain the following types:

| op(func) | Format | Description|
|------|-------|----------|
| 001(00) | get [i_num] | Move to the machine with ID [inum], then get an item.|
| 001(01) | put [i_num] | Move to the machine with ID [inum], then put an item.|
| 001(10) | interact [i_num] | Move to the machine with ID [inum], then interact it.|
| 001(11) | throw [i_num] | No need to move, throw item to machine with ID [inum].|
| 010(00) | jumpif [i_num] [signal] | Jump [i_num] lines if corresponding signal is 1.|
| 010(01) | jumpifn [i_num] [signal] | Jump [i_num] lines if corresponding signal is 0.|
| 011(00) | wait [i_num] | Wait about [inum]*100 ms.|
| 011(01) | wait [signal] | Wait till corresponding signal is 1.|
| 100(01) | game start | game should start.|
| 100(10) | game end | game should over.|

更详细的介绍请前往各类指令集对应页面查看.

For more details, please visit the corresponding pages of each instruction set.



