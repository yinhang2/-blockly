# 第二章 Blockly编程基础
## 2.1 Blockly的数据类型
### 2.1.1 数据的含义
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在计算机程序的世界里，程序的基本任务就是处理数据，无论是数值还是文字、图像、图形、声音、视频等信息，如果要在计算机中处理的话，就必须将它们转换成所谓的数字信息，因为计算机中只能存储数字，甚至连计算机程序都是由数字组成的，所以在使用计算机程序解决问题的时候，首先需要把需要处理的信息数字化，即使用数字表示需要处理的信息。如果我们要处理图像信息，可以把一副图像可以看做是由m行n列的点组成的，每一个点是一种颜色，每一种颜色可以使用三个数据（R、G、B）来表示，R表示红色的比例、G表示绿色的比例、B表示蓝色的比例，这样就可以用个数据表示一副图像了。如果我们需要处理文字信息，例如英文，文字是由字母及一些标点符号组成的，我们可以将每一个符号用一个数字来表示，例如在ASCII编码标准中，用65表示字母“A”,用66表示字母“B”等等，只要把我们所使用的每个符号都进行编码（数字化），我们就可以在计算机中处理文字信息了，总之，不论什么信息，如果要使用计算机程序来处理的话，就必须进行数字化，即将它们转换成数字表示的形式，才能够在计算机中处理。如果我们使用BLOCKLY书写的程序处理数据，由于任何信息在计算机中都是以数据的形式存在的，表示数据的形式可能就多种多样，于是就出现了这样一些基本问题，在BLOCKLY可以使用那些种类的数据？每一种类型的数据的书写形式是怎样的？本章的其余部分将详细讨论这些问题。
### 2.1.2 Blockly中的数据
#### 1.计算机中数据的表示形式
<strong>(1)二进制表示</strong><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;众所周知，在计算机中，采用二进制代码表示字母、数字字符以及各种各样的符号、汉字等。在处理信息的过程中，可将若干位的二进制代码组合起来表示各种各样的信息。但由于二进制数不直观，人们在计算机上实际操作时，输入、输出的数值数据都是十进制，而具体转换成二进制编码的工作则由计算机软件系统自动完成。字母和各种字符在计算机中的传输普遍采用ASCII码，即美国标准信息交换码，它用了7位二进制数来表达字母和各种常用字符。对于汉字信息的表示比较复杂，我国有汉字几万个，常用的汉字也有7000多个，为了统一，我国制定了汉字编码标准，规定了一、二级汉字共6763个，用两个字节来表示一个汉字。<br>
<strong>(2)十进制表示</strong><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;十进制形式是我们最熟悉的表达形式，十进制数的书写规则是由正负号开头，后跟一个自然数的形式，如果是正数，正号可以省略。例如：-213、0、415、76、+83都是合法的整数。在BLOCKLY中，如不特殊定义，所有数一般默认为十进制。
<center><img src="/assets/p4.png"/></center>
<strong>(3)八进制形式</strong><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;使用八进制形式表示一个整数，八进制数的书写规则是以数字0开头，后跟一个八进制形式的数，如果是负数，则以负号开头。例如：0123、-087、00、+0327等都是合法的八进制形式。<br>
<strong>(4)十六进制形式</strong><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;以“0x”开头，后跟一个十六进制数，例如：0xFF03、0x123、0xAC7等都是合法的十六进制形式，而x37、287都是非法的十六进制形式。
#### 2.Blockly中的数据类型
<strong>(1)实数</strong><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;程序中所有的数据都有特定类型，数据的表示方式、取值范围以及对数据可以使用的操作都由数据所属的类型决定。类型可以帮助编译程序生成高效的目标代码，编译程序在生成目标代码时，可按需分配存储空间可如何引用这个数据。一个数据属于某个特定的类型后，在数据上允许操作的运算也确定了。例如，整数可以做四则运算等；字符串则可以进行比较、连接、判断子串等，但不能做四则运算。
<center><img src="/assets/p5.png"/></center>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在BLOCKLY中，提供了数据输入模块，其默认一定的存储长度，默认数值为0。
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在一些计算公式中提供了的数据输入模块，如下。
<center><img src="/assets/p6.png"/></center>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;各模块数据输入只区分数字、字符类型，也就是说在允许输入数字的模块中不允许输入字符，可以输入任何数字。但是在程序具体执行过程中，程序会对输入数字类型的合法性进行检查。
<center><img src="/assets/p7.png"/></center>
<strong>(2)字符</strong><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;字符类型的数据,字符在内存中存储的是该字符的ASCII编码值，由于字符数据存储的就是一个字符的编码数值，所以字符数据也可以当做一个整数。在BLOCKLY中的基本表示形式是用“”引用起来，比如“A”、“”Q、“a”、“b”、“#”、“-”、“。”等。使用双引号将一个数字放在引号里面，其意义也表示该数字，和不用引号表示的意义相同,如“65”和65的意义相同。但是大写字母和对应的小写字母对应的ASCII编码值不同，因此为不同的字符。如“A”、 “a”为不同字母。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;同样的，在BLOCKLY的字符输入模块中，允许输入任何形式的字符和数字，只要不超出特定的长度都是合法的。只有在程序执行的时候才检查输入是否正确。
<strong>(3)字符串</strong><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在BLOCKLY中字符串的表示和单个字符的表示形式是一样的<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;下面几个模块是BLOCKLY提供的字符串输入模块。<br>
<center><img src="/assets/p8.png"/></center>
如字符串输入模块：
<center><img src="/assets/p9.png"/></center>
如求字符串的长度：
<center><img src="/assets/p10.png"/></center>
如小写字符变大写字母：
<center><img src="/assets/p11.png"/></center>
如添加字符串：
<center><img src="/assets/p12.png"/></center>
<strong>(4)数据使用</strong><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;前面讲过，在BLOCKLY中，数据和字符定义过程中程序给了一定的存储空间，BLOCKLY不计较输入数据或字符的类型和长度，程序员不需要考虑非法输入带来的麻烦，这给了程序员极大的方便。如下：
<center><img src="/assets/p13.png"/></center>
<center><img src="/assets/p14.png"/></center>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;但是，在程序运行过程中，如果数据输入错误或当数据超过程序可表示的范围，数据将会产生错误。例如:
<center><img src="/assets/p15.png"/></center>
如图可见，当超过16位后的数据不再进行计算，而是原数据输出。例如：
<center><img src="/assets/p16.png"/></center>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在该循环语句中的重复次数输入模块默认输入数据为正整数。如果输入负数，程序默认为0；如果输入小数，默认在其整数部分上加1。



