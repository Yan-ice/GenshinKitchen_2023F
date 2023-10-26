我们在框架中提供了UART module和Script Memory两大模块.

We provide two modules in the framework, UART module and Script Memory.

![overview](./overview.png)


**UART module**负责建立与客户端的连接,与客户端进行交互(可以看到图中N5和T4就是UART通道).

**UART module** is responsible for establishing connections with and interacting with clients (N5 and T4 in the figure are UART channels).

**Script Memory**负责接收与存储来自客户端的脚本, 然后你就可以从中读取与解析脚本,并执行动作.

**Script Memory** is responsible for receiving and storing scripts from the client, and then you can read and parse the script from it, and perform actions.
