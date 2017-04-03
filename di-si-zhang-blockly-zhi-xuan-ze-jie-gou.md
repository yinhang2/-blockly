# 第四章 Blockly之选择结构
今天，我们通过一个游戏来学习选择结构，游戏的地址如下：<br>
[https://blockly-games.appspot.com/bird?lang=en](https://blockly-games.appspot.com/bird?lang=en)<br>
本游戏分为10关：主要游戏规则如下：<br>
①主界面是游戏的运行界面，我们需要通过控制代码来让鸟叼完虫子后回到鸟窝，并保证不撞到墙。<br>
②代码主要由选择结构和逻辑判断组成。<br>
③点击下方的Run Program按钮后程序就会执行右侧的代码。回到鸟窝后，游戏结束，顺利通关。<br>
你可以先尝试着看看鸟应该怎样去运动，并如何调用代码块。稍后我们将会详细介绍关于选择结构的各种语法。<br>
<table border="1">
<tr>
<td>
    1.<center><img src="/assets/p58.png"/></center>
</td>
<td>
    2.<center><img src="/assets/p59.png"/></center>
</td>
</tr>
<tr>
<td>
    3.<center><img src="/assets/p60.png"/></center>
</td>
<td>
    4.<center><img src="/assets/p61.png"/></center>
</td>
</tr>
<tr>
<td>
    5.<center><img src="/assets/p62.png"/></center>
</td>
<td>
    6.<center><img src="/assets/p63.png"/></center>
</td>
</tr>
<tr>
<td>
    7.<center><img src="/assets/p64.png"/></center>
</td>
<td>
    8.<center><img src="/assets/p65.png"/></center>
</td>
</tr>
<tr>
<td>
    9.<center><img src="/assets/p66.png"/></center>
</td>
<td>
    10.<center><img src="/assets/p67.png"/></center>
</td>
</tr>
</table>

## 4.1 关系运算符和关系表达式
&emsp;关系运算是逻辑运算中比较简单的一种，所谓的关系运算实际上就是比较运算，将两个值进行比较，从而判断比较的结果是否满足符合的条件，比如关系表达式a>5，如果a为6，那么表达式成立，结果就是真，反之，如果a的值为-1，那么表达式不成立，结果就是假。
### 4.1.1关系运算符及其优先顺序
我们有如下6种关系运算符：>，<，≥，≤，==，!=<br>
优先级次序如下：<br>
&emsp;（1）前四种的优先级顺序高于后两种，前四种优先级相同，后两种优先级相同。<br>
&emsp;（2）关系运算符的优先级低于算术运算符。<br>
&emsp;（3）关系运算符的优先级高于赋值运算符。<br>
举几个例子：
<center>(1)c > a+b &emsp;&emsp;c > (a+b)<br>
(2)a > b == c &emsp;&emsp;(a > b) == c<br>
</center>

### 4.1.2关系表达式
关系表达式的结果有两个，如下图所示，真和假（非真）。<br>
我们需要注意“=”和“==”的区别：<br>
“=”表示赋值语句，比如a = 5，是把5赋值给变量a<br>
“==”是逻辑判断，比如a == 5，是表示变量a的值是否和5相等，如果相等就返回真，反之返回假，我们的blockly如下图所示，逻辑判断“==”写成了“=”，是为了方便大家去理解，但实际上你要知道这两者是有区别的，细心的读者打开blockly转换到代码就会发现代码中显示的都是“==”。<br>
<center><img src="/assets/p68.png"/></center>

## 4.2 逻辑运算符和逻辑表达式
### 4.2.1逻辑运算符及其优先级
&emsp;逻辑运算符包括与、或、非，在我们的blockly中，如下图所示去表示分别为和、或、非。
<center><img src="/assets/p69.png"/></center>
逻辑和，a 和 b，当且仅当a，都为真时，结果为真。<br>
逻辑或，a 或 b，只要a，b中有一个为真，结果就为真。<br>
逻辑非，非 a，如果a为真，则结果为假，如果a为假，那么结果为真。<br>
我们用图表的形式来表示如下：<br>
<center>
<table border="1" align=center>
<tr>
<td>a</td>
<td>b</td>
<td>a and b</td>
<td>a or b</td>
<td>not a</td>
</tr>
<tr>
<td>真</td>
<td>真</td>
<td>真</td>
<td>真</td>
<td>假</td>
</tr>
<tr>
<td>真</td>
<td>假</td>
<td>假</td>
<td>真</td>
<td>假</td>
</tr>
<tr>
<td>假</td>
<td>真</td>
<td>假</td>
<td>真</td>
<td>真</td>
</tr>
<tr>
<td>假</td>
<td>假</td>
<td>假</td>
<td>假</td>
<td>真</td>
</tr>

</table>
</center>

（1）非逻辑，即非在三种运算符中优先级最高。<br>
（2）逻辑“和”和“或”优先级相等，低于非逻辑

### 4.2.2逻辑表达式
&emsp;逻辑表达式的值应该是真或假，下面我们一起通过一个例子来了解下逻辑表达式在选择结构中的作用：<br>
&emsp;我们知道在平年中2月份是28天，闰年中2月份是29天，那么怎样去区分平年和闰年呢？我们可以通过如下的流程图来进行判断：<br>
<center><img src="/assets/p70.png"/></center>
闰年的条件是符合下面二者之一：<br>
&emsp;①能被4整除，但不能被100整除<br>
&emsp;②能被4整除，又能被400整除<br>
&emsp;在blockly中有两种除法，一种是普通的除法，一种是取余除法，如下图所示：<br>
&emsp;普通除法直接进行计算，而取余除法将是将未整除的数保留下来，只取整数部分，并没有小数部分。<br>
<center><img src="/assets/p71.png"/></center>
&emsp;我们用符号/来表示除法，用%来表示取余，&&表示“和”，||表示“或”，！表示“非”。<br>
&emsp;那么闰年就可以这样来表示：<br>
&emsp;（year % 4 == 0 && year % 100 ！=0）|| year % 400 == 0<br>
&emsp;那么非闰年就直接在前面加一个！符号就好了<br>
&emsp;！（（year % 4 == 0 && year % 100 ！=0）|| year % 400 == 0）<br>
&emsp;转化为代码就是这样：
<center><img src="/assets/p72.png"/></center>

## 4.3 条件语句-if
### 4.3.1选择结构之if语句
&emsp;Blockly中的if语句表示选择条件，如果满足条件就执行“......”语句，在if的左侧有一个设置按钮，点开后可以添加else if和else语句，表示多重判断，你可以将左侧的模块儿拖到if下面就形成了其它三种语句。
<center><img src="/assets/p73.png"/></center>
&emsp;比如这个例子：
&emsp;班里面要做一个成绩统计，成绩在90分以上就输出A，在80-90分之间就输出B，80分以下输出C：<br>
<center><img src="/assets/p74.png"/></center>
&emsp;我们进行到这里这个程序你大致就应该明白了上面的代码究竟写的是什么内容，第一句话就是从键盘获取一个分数赋值给score这个变量，如果90 < score < 100那么就输出A，在80 < score <90之间输出B，其余的输出C。
<center><img src="/assets/p75.png"/></center>
<center><img src="/assets/p76.png"/></center>

我们把刚才闰年的那个例子用编程来实现：
<center><img src="/assets/p77.png"/></center>

运行结果如下：

<center><img src="/assets/p79.png"/></center>
<center><img src="/assets/p78.png"/></center>

&emsp;是不是挺简单的呢？下面我们将前面学习的东西巩固下，并将训练的难度进行升级：<br>
&emsp;①创建两个变量，并比较这两个数的大小。<br>
&emsp;②创建三个变量，分别通过键盘复制，并将这三个数由小到大输出。






