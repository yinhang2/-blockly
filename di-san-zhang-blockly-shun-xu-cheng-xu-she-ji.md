# 第三章Blockly顺序程序设计
## 3.1 什么是Blockly语言
&emsp;2012年6月，Google发布了完全可视化的编程语言Google Blockly，整个界面清晰明了， 你可以如同在玩拼图一样用一块块图形对象构建出应用程序。每个图形对象都是代码块，你可以将它们拼接起来，创造出简单功能，然后将一个个简单功能组合起来，构建出一个程序。这个程序与我们平时使用的编程语言最大的差别是无需自己编写代码，在我们所使用的代码块的背后就是已经编写好了的代码，而用户并不需要关心这些，整个过程只需要鼠标的拖曳，不需要键盘敲击。<br>
&emsp;我们首先通过一个小游戏来了解 Google Blockly,在Blockly Games:Maze这个小游戏中，每个关卡都会提供一个地图，地图上有起点和终点，而我们要做的事就是利用每个关卡提供的语句模块构成一个小程序，使得程序运行起来时起点处的小人能够顺利从起点到达终点。<br>
&emsp;例如第二关，小人需要经过两次转弯才能到达终点，需要注意的是，第一次转弯后小人必须前进一部分路程才能进行第二次转弯。<br>
<center><img src="/assets/p25.png"/></center>
所有组成的模块如下：
<center><img src="/assets/p26.png"/></center>
&emsp;在这个游戏中，我们最需要弄清楚的是每个数据块执行的顺序，以及我们应该如何摆放它才能让小人顺利的到达终点，这就引出了本章的重点，Blockly语言的顺序程序设计。<br>
&emsp;在本章的学习中，我们将学习到几种顺序执行的语句，在这些语句的执行过程中不会发生流程控制的转移，比如赋值语句，输入输出语句。<br>
&emsp;在讲解Blockly语言的顺序程序设计之前，让我们先来对Blockly语言做一个总的概述，Blockly语言总共分为8个板块。<br>
<strong>（1）Logic ,表明数据间的逻辑关系。</strong>
<center><img src="/assets/p27.png"/></center>
<strong>（2）Loops 循环控制</strong>
<center><img src="/assets/p28.png"/></center>
<strong>（3）Math 数学运算模块 </strong>
<center><img src="/assets/p29.png"/></center>
<strong>（4）text 文本块</strong>
<center><img src="/assets/p30.png"/></center>
<strong> (5) list 列表块</strong>
<center><img src="/assets/p31.png"/></center>
<strong> (6) Colour 颜色块</strong>
<center><img src="/assets/p32.png"/></center>
<strong> (7) Variables 变量块</strong>
<center><img src="/assets/p33.png"/></center>
<strong> (8)Functions 函数块</strong>
<center><img src="/assets/p34.png"/></center>

&emsp;当学生学习了新的函数或者命令，就可以使用这些Blockly语句块进行联系，所有的块被组织排放在左侧的列表中，使用时根据正确的语法和适当的缺口对接就能实现预定的功能。因此，我们可以通过对块进行适当的组织就能轻松的实现每一个新的想法和创意。
## 3.2 赋值语句
&emsp;在c语言的学习中，我们可以知道赋值语句是由赋值表达式加上一个分号构成。而在Blockly语言中，赋值语句是由如下一个语句块构成：
<center><img src="/assets/p35.png"/></center>
&emsp;其中i 指的是一个变量，也可以用其它字母代替，在to 后面紧跟着的是要赋给i 的值。同样的，这个赋值表达式也可以包括在其它表达式中，例如：
&emsp;其中i 指的是一个变量，也可以用其它字母代替，在to 后面紧跟着的是要赋给i 的值。同样的，这个赋值表达式也可以包括在其它表达式中，例如：
<center><img src="/assets/p36.png"/></center>
if 后面跟着的是一个条件，例如可以是
<center><img src="/assets/p37.png"/></center>

其作用是当i 大于零时，将一个值赋给i。

## 3.3 Blockly 语言的输入与输出
&emsp;当计算机被用于和外界交互时才是最有趣的，所谓的输入与输出是以计算机主机为主体而言的。<br>
&emsp;输入就是将数据从输入设备带入计算机 (如键盘，磁盘，光盘，扫描仪等)<br>
&emsp;输出就是将数据从计算机发送到外部输出设备（如显示屏，打印机，磁盘等），输入输出有时候并称为I/O。有许多种类的I/O，包括人机界面，网络接口，存储设备接口和自动机器接口。计算机在处理各种输入输出上有许多共同点，无论是与一个人，一个文件或其他一些设备进行交互。用户可以通过只学习如何创建用户界面来学习重要的I/O技术。<br>
&emsp;我们先来介绍Blockly语言的输出语句块：
<center><img src="/assets/p38.png"/></center>
&emsp;它可以根据后面所接的不同的语句块而输出不同的数据，例如：
<center><img src="/assets/p39.png"/></center>
&emsp;它输出的是两个数字的和。
<center><img src="/assets/p40.png"/></center>
&emsp;而打印
“hello，my name is zhangwei”则是在屏幕上输出这一段文本。
<center><img src="/assets/p41.png"/></center>
&emsp;而在这一段文本的前面加上另一个数据块则又是另外一种效果  如:
<center><img src="/assets/p42.png"/></center>
&emsp;上面这一行数据模块则是输出的这段文本的长度。
<center><img src="/assets/p43.png"/></center>
&emsp;例&nbsp;&nbsp;输出字符串“Hello World!”
<center><img src="/assets/p44.png"/></center>
&emsp;这段程序将会输出三次Hello World!，在程序中，我们先将步长的值设置为1，当步长的值小于等于3的时候进入repeat循环，在屏幕上输出Hello World！的字样然后将步长的值加1加赋值给步长,直到步长的值大于3时将不再进入循环，所以我们不难知道，这段程序将会在屏幕上输出三次Hello World!的字样。<br>
&emsp;介绍完输出的语句块之后，让我们再来介绍输入的语句块，Blockly语言的输入语句块为<br>
<center><img src="/assets/p45.png"/></center>
&emsp;这个输入语句块输入的既能是文本，也可以是数字，通过语句中间的选项可以进行不同的选择，当我们运行这句语句块的时候，屏幕同样会弹出一个文本框，这个时候我们就能在文本框里面输入我们想带入计算机的数据，点击确认后，我们所输入的数据就将会进入我们所设置的变量里面，下图便是我们输入数据的界面:<br>
<center><img src="/assets/p46.png"/></center>
&emsp;通过上面简单的介绍，同学们可能对输入的理解还不够深刻，下面让我们来举一个具体的例子。<br>
&emsp;首先，让我们设置一个变量a，然后再将上面的输入语句块连接在设置变量语句块的后面，点击运行，在出现的为文本框里面输入我们想要输入的数据，点击确认以后，数据就会被赋值给a了，如果同学们想确认a的值是不是真的是我们所输入的数据，可以在这段数据块的下面加上输出数据块，将a的数据输出到屏幕上，这样我们就能确认a的值了。<br>
<center><img src="/assets/p47.png"/></center>
<center><img src="/assets/p48.png"/></center>
<center><img src="/assets/p49.png"/></center>

## 3.4 顺序结构程序设计举例
&emsp;例&nbsp;&nbsp从键盘输入一个大写字母，要求改用小写字母输出。<br>
&emsp;看到这个题目，同学们首先想到的是什么呢?在前面介绍的几个Blockly模板中大家会首先想到哪个语句块?或许记忆力好的同学已经想到，在我们介绍到的Text板块中就有一个语句块是用来转换大小写的:
<center><img src="/assets/p50.png"/></center>
&emsp;这个语句块使用起来相当简单，只需要将你需要转换的文本连接在此语句块的后面就行了，此语句块同样能根据需求不同产生三种不同的效果，我们所做的只要改变语句块中的选项罢了。<br>
&emsp;既然已经找到了这个问题所需要的核心语句，那么后面的问题就简单了，不难看出这个题目同时用到了输入和输出，所以我们只需要设置一个变量用来存放我们所输入的数据，然后将输入的数据转化成小写并输出，这个问题就解决了。所组成的数据块如下：<br>
<center><img src="/assets/p51.png"/></center>
&emsp;运行结果如下：
<center><img src="/assets/p52.png"/></center>
<center><img src="/assets/p53.png"/></center>
&emsp;例&nbsp;&nbsp;输入一个两位数，如果这两位相乘大于两位相加，则输出“大”这个字。<br>
&emsp;在同学们第一次见到这个题目时，可能会感到有点手足无措，但其实我们一步步分析就会发现这个题目不过如此，在解决这个问题前，我们首先要搞清楚怎么根据输入的俩位数分别得到个位数和十位数，如果大家曾经接触过其它语言，就会知道俩位数 除以10得到的商就是十位上的数字，而得到的余数就是个位上的数字，在弄清楚这个问题以后，这个题目同样变得不堪一击了。具体数据块如下：
<center><img src="/assets/p54.png"/></center>
&emsp;在这个组好的数据块里，我们首先将输入的俩位数存到ab这个变量里面，然后将计算得出的个位数和十位数分别赋值给b和a，再利用我们前面提到的logic模板里面的if语句块判断大小，最后输出。<br>
&emsp;运行过程与结果如下：
<center><img src="/assets/p55.png"/></center>
<center><img src="/assets/p56.png"/></center>

&emsp;通过本章的讲解，相信大家对Blockly语言的顺序程序设计有了大概的了解，也对输入输出有了清晰的认识，语言的顺序程序设计在同学们今后的语言学习中起着相当重要的作用，希望能引起大家的重视。
## 课后练习
&emsp;1、对两个整数变量的值进行互换。<br>
&emsp;2、如果是做单项选择题，请根据给定的选项，输出对应的结果。<br>
&emsp;&emsp;举例：<br>
&emsp;&emsp;&emsp;总共有4个字符。A，B，C，D。<br>
&emsp;&emsp;&emsp;你给出字符A，输出：你选择了A  <br>
&emsp;&emsp;&emsp;你给出字符B，输出：你选择了B  <br> 
&emsp;&emsp;&emsp;你给出字符C，输出：你选择了C<br>
&emsp;&emsp;&emsp;你给出字符D，输出：你选择了D<br>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、根据输入的值，判断是星期几。<br>
&emsp;&emsp;举例：<br>
    &emsp;&emsp; 输入：1<br>
       &emsp;&emsp; 输出：星期1
        
## 知识梳理
<center><img src="/assets/p57.png"/></center>
 