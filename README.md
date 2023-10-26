# Welcome to Genshin Kitchen!

(Author：Yan_ice、R.X. Jiang, W.Q. Yan）

The traveler is doing an internship at the Deer Hunter restaurant and needs your help!
There are various ingredients in the restaurant, and your task is to use these ingredients, according to the given recipe, operate the various facilities of the restaurant, and make a finished dish.

**Wiki:** https://genshinkitchen-doc.readthedocs.io/zh-cn/latest/

## Scoring Standard

-   **Step 1. Client protocol via UART（$30$ points）**
    Transmitter testing: The ability to correctly reflect the expected operation on the development board into the software. This includes target selection and operation.
    Receiver test: can correctly analyze the feedback signal from the software and reflect it to the LED and other peripherals.

-   **Step 2. Manually prepare dishes（$30$ points）**
    All **illegal** situations mentioned in the document are not allowed to occur in any way.
    The hardware needs to have the ability to prevent illegal operations, for example, if you try to issue a special operation command via button while the traveler is moving, the hardware should not keep the `interact_operation` signal at a rising edge.

-   **Step 3. Automatically perpare dishes（$30$ points）**
    Simple state: In a reset kitchen, three different dishes are automatically prepared.
    Complex state: In a randomized kitchen, three different dishes are automatically made.
    *You can use the script to complete this part of the work, there will be extra points.*

-   **Bonus 1. Use scripts（$20$ points）**
    A toolchain containing a script specification document, a script compiler, and a machine code transfer protocol will be provided. The hardware needs to be able to receive, store, and run scripts as expected.
    Basic requirement: Use scripts to finish Step 3.
    Additional requirement: Automatically resolve illegal operations. i.e. no script, no matter how bad, can produce an illegal state.

-   **Bonus 2. Maximum efficiency!（$10$ points）**
    You can use any means to make the traveler complete the specified three courses in the shortest time:
	`Chili Chicken, Berry Miss Manjuu, Cold Cut Platter`
	The less time the timer shows, the higher your score!
