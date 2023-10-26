# Welcome to GenshinKitchen
**旅行者正在猎鹿人餐馆进行实习，需要你的帮助！**

**The traveler is undergoing an internship at the Huntsman's Restaurant and seeks your assistance!**


餐馆里有各种食材，你的任务是使用这些食材，按照给定的配方，操作餐馆的各种设
施，制作出成品菜肴。

The restaurant is equipped with a variety of ingredients, and your task is to
utilize these ingredients, operate various facilities within the restaurant, and
produce finished dishes according to the provided recipes.

**Git repository:** https://github.com/Yan-ice/GenshinKitchen_2023F

*Author: J.Q. Yan, R.X. Jiang, W.Q. Yan*

## Goals

在这个厨房客户端中,操作大厨旅行者的并不是鼠标键盘,也不是手柄,而是你的FPGA开发板. 
因此,你需要基于我们提供的框架设计一套合适的硬件逻辑来控制旅行者制作菜肴.

In this kitchen client, Chef Traveler is operated not by the mouse and keyboard, nor by the controller, but by your FPGA development board.
Therefore, you need to design a suitable set of hardware logic based on the framework we provide to control the traveler to make dishes.

## Documentation

除去QuickStart, 整个wiki文档分为4大部分.

1. 在**COOKER HANDBOOK**章节中,我们会介绍客户端中的内容, 包括厨房布局,厨房里的物品,机器等.

2. 在**HDL FRAMEWORK(DEMO)**章节中,我们会介绍为大家提供的HDL框架,帮助大家理解并使用这个框架.

3. 在**CLIENT PROTOCOL**章节中,我们会介绍客户端和开发板之间基于UART的通信协议,让大家更好地完成二者之间的交互.

4. 在**SCRIPT SPECIFICATION**章节中,我们会介绍脚本规范,尽可能清晰明确地阐述脚本的撰写格式与执行要求.

Apart from QuickStart, the entire wiki documentation is divided into four parts.

1. In the chapter of the **COOKER HANDBOOK**, we will introduce the contents of the client, including the kitchen layout, the items in the kitchen, the machines, and so on.

2. In the chapter **HDL FRAMEWORK(DEMO)**, we will introduce the HDL framework for you to help you understand and use this framework.

3. In the chapter **CLIENT PROTOCOL**, we will introduce the UARt-based communication protocol between the client and the development board, so that everyone can better complete the interaction between the two.

4. In the chapter **SCRIPT SPECIFICATION**, we will introduce the script specification, and explain the script writing format and execution requirements as clearly and explicitly as possible.

## QuickStart

建议大家先尝试QuickStart内容,帮助大家快速上手.

It is recommended that you try the QuickStart content first to help you get started quickly.

## Repository
项目仓库结构如下:
```
GenshinKitchen/
	Doc/
		index.md
		...
	GenshinKitchen_Client/
		GenshinKitchen_Windows/
		GenshinKitchen_Linux/
	HDL_Framework/
		GenshinKitchen.srcs/
		GenshinKitchen.xpr
	QuickStart/
		ScriptDemo.bit
		ManualDemo.bit
		Script_MakeManjuu.txt
	README.md
	icon.png
	
```

**Doc** 包含此文档的本地版本（但可能不是最新的）。

**GenshinKitchen_Client** 包含Unity制作的多平台软件客户端.

**QuickStart** 包含帮助你快速上手的内容.

**HDL_Framework** 包含我们提供的HDL框架.


**Doc** Contains a local version of this document (but it may not be up to date).

**GenshinKitchen_Client** includes multi-platform software client produced by Unity Free Edition.

**QuickStart** contains content to help you get started quickly.

**HDL_Framework** contains the basic HDL framework we provide.


