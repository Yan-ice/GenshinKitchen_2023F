# Welcome to Genshin Kitchen!

(Author：Yan_ice、R.X. Jiang, W.Q. Yan）

The traveler is doing an internship at the Deer Hunter restaurant and needs your help!
There are various ingredients in the restaurant, and your task is to use these ingredients, according to the given recipe, operate the various facilities of the restaurant, and make a finished dish.

**Wiki:** https://genshinkitchen-doc.readthedocs.io/zh-cn/latest/


## Your works:

-   **Step 1. Client protocol via UART**
    Transmitter testing: The ability to correctly reflect the expected operation on the development board into the software. This includes target selection and operation.
    Receiver test: can correctly analyze the feedback signal from the software and reflect it to the LED and other peripherals.

-   **Step 2. Manually prepare dishes**
    Use buttons and switches to send operations to the software client. 
    In this step, you can refer to the demo **ManualDemo.bit**.

-   **Step 3. Preventing illegal operations**
    In this step, all **illegal** situations mentioned in the document are not allowed to occur in any way.
    The hardware needs to have the ability to prevent illegal operations, for example, if you try to issue a special input via button while the traveler is moving, the hardware should not keep the `interact_operation` signal at a rising edge (you can ignore the input from button).

-   **Step 4. Use scripts**
    A toolchain containing a script specification document, a script compiler, and a machine code transfer protocol will be provided. The hardware needs to be able to receive, store, and run scripts as expected.
    Simple state test: In a reset kitchen, different dishes are automatically prepared by a proper script.
    In this step, you can refer to the demo **ScriptDemo.bit**.

-   **Step 5. Handling exception**
    When executing the script, the unknown state in the kitchen will be automatically handled by the script. 
    It is impossible for any random kitchen to produce an illegal state, no matter how bad the state of the kitchen to begin with.
    Complex state test: In a **randomized** kitchen, different dishes can still be automatically prepared.

-   **Step 6. Maximum efficiency!**
    In a reset kitchen，you can use **any means** to make the traveler complete the specified three courses in the shortest time:
	`Chili Chicken, Berry Miss Manjuu, Cold Cut Platter`
	The less time the timer shows, the higher your score!

