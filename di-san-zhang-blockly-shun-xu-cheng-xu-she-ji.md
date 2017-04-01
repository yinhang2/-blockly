# 第三章Blockly顺序程序设计
## 3.1 什么是Blockly语言
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2012年6月，Google发布了完全可视化的编程语言Google Blockly，整个界面清晰明了， 你可以如同在玩拼图一样用一块块图形对象构建出应用程序。每个图形对象都是代码块，你可以将它们拼接起来，创造出简单功能，然后将一个个简单功能组合起来，构建出一个程序。这个程序与我们平时使用的编程语言最大的差别是无需自己编写代码，在我们所使用的代码块的背后就是已经编写好了的代码，而用户并不需要关心这些，整个过程只需要鼠标的拖曳，不需要键盘敲击。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们首先通过一个小游戏来了解 Google Blockly,在Blockly Games:Maze这个小游戏中，每个关卡都会提供一个地图，地图上有起点和终点，而我们要做的事就是利用每个关卡提供的语句模块构成一个小程序，使得程序运行起来时起点处的小人能够顺利从起点到达终点。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;例如第二关，小人需要经过两次转弯才能到达终点，需要注意的是，第一次转弯后小人必须前进一部分路程才能进行第二次转弯。<br>
<center><img src="/assets/p25.png"/></center>
所有组成的模块如下：
<center><img src="/assets/p26.png"/></center>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在这个游戏中，我们最需要弄清楚的是每个数据块执行的顺序，以及我们应该如何摆放它才能让小人顺利的到达终点，这就引出了本章的重点，Blockly语言的顺序程序设计。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在本章的学习中，我们将学习到几种顺序执行的语句，在这些语句的执行过程中不会发生流程控制的转移，比如赋值语句，输入输出语句。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在讲解Blockly语言的顺序程序设计之前，让我们先来对Blockly语言做一个总的概述，Blockly语言总共分为8个板块。<br>
####  （1）Logic ,表明数据间的逻辑关系。
<center><img src="/assets/p27.png"/></center>
####  （2）Loops 循环控制
<center><img src="/assets/p28.png"/></center>
####  （3）Math 数学运算模块 
<center><img src="/assets/p29.png"/></center>
####  （4）text 文本块
<center><img src="/assets/p30.png"/></center>
####  (5) list 列表块
<center><img src="/assets/p31.png"/></center>
####  (6) Colour 颜色块
<center><img src="/assets/p32.png"/></center>
####  (7) Variables 变量块
<center><img src="/assets/p33.png"/></center>
#### (8)Functions 函数块
<center><img src="/assets/p34.png"/></center>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当学生学习了新的函数或者命令，就可以使用这些Blockly语句块进行联系，所有的块被组织排放在左侧的列表中，使用时根据正确的语法和适当的缺口对接就能实现预定的功能。因此，我们可以通过对块进行适当的组织就能轻松的实现每一个新的想法和创意。<br>
## 3.2 赋值语句
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在c语言的学习中，我们可以知道赋值语句是由赋值表达式加上一个分号构成。而在Blockly语言中，赋值语句是由如下一个语句块构成：
<center><img src="/assets/p35.png"/></center>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中i 指的是一个变量，也可以用其它字母代替，在to 后面紧跟着的是要赋给i 的值。同样的，这个赋值表达式也可以包括在其它表达式中，例如：
