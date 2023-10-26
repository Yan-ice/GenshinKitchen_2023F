猎鹿人餐馆已经准备了一个 Unity客户端（以下简称 客户端），需要你使用 Uart 与客户端进行通信，并将你在开发板上的操作反映到客户端里。好消息是，一个现成的 Uart 模块已经在框架中为你准备好。你只需要以此为基础，在你的开发板上实现一套与客户端对应的应用层协议。

The GenshinHunter Restaurant has prepared a Unity software named GenshinKitchen.exe, and it requires you to communicate with the software using UART to reflect your actions on the development board in the software. The good news is that a ready-made UART module has been prepared for you. You only need to build a simple protocol on your development board that corresponds to the kitchen software, based on this module.

## Overview

我们会将整个协议分为两部分: 发送端协议(数据从开发板到客户端), 接收端协议(数据从客户端到开发板).

We will divide the whole protocol into two parts: the sender protocol(from board to client) and the receiver protocol(from client to board).
Among them, the script transfer part of the receiver protocol is already provided in the framework, so students who are not interested can skip it.

UART模块是以Byte(8bit)为单位依次接受/发送数据的.
在这个简单的应用层协议中,绝大部分情况下最低2bit都被用于区分频道,而高6bit被用于传输具体数据. 
XXXXX TODO

基本频道区分如下,详情请查看该章节剩余的的文档.

|Roles| Channel | Description|
|--------|--------|--------------|
|Sender| XXXXXX00 | Ignored by Client.|
|Sender| XXXXXX01 | Change the game state.|
|Sender| XXXXXX10 | Let traveler perform specific operations. |
|Sender| XXXXXX11 | Let traveler change the target machine. |
|Receiver| XXXXXX00 | Should be ignored by Board. |
|Receiver| XXXXXX01 | Feedback signal from Client to Board. |
|Receiver| XXXXXX10 | Change into Script loading mode.|
|Receiver| XXXXXX11 | Unused. Should be ignored by Board.| 



