# 第六章 Blockly的进阶
## 6.1 模块化程序设计
&emsp;一个较大的程序一般应分为若干个程序模块，每一个模块用来实现一个特定的功能。所有的高级语言中都有子程序这个概念，用子程序实现模块的功能。比如在C语言中，子程序的作用是由函数完成的，一个C程序可由一个主函数和若干个函数构成，由主函数调用其它函数，其他函数也可以相互调用，同一个函数可以被一个或多个函数调用任意多次。在Blockly中，也支持函数的定义和使用。
<center><img src="/assets/p126.png"/></center>

&emsp;在程序设计中，常将一些常用的功能模块编写成函数，放在函数库中供公共选用，所以要善于利用函数，以减少重复编写代码的工程量。
### 6.1.1 函数的定义形式
&emsp;在C语言和别的语言中，函数的一个明显的特征就是使用时带括号()，必要的话，括号中还要包含数据和变量，称为参数(Parameter)，参数是函数需要处理的的数据。根据参数的有无，可将函数简单的分为无参函数和有参函数。<br>
&emsp;这段话对于没有接触过C语言或其他编程语言的同学可能比较抽象，不过不必担心，接下来我们会通过Blockly向您详细的解释。<br>
&emsp;<strong>(1)无参函数的定义</strong>
<center><img src="/assets/p127.png"/></center>

&emsp;上图是我们从Blockly工具箱中拖出的一个函数块，其中:对函数进行参数的设置，无参函数不需要用到此选项
<center><img src="/assets/p128.png"/></center>

对工具箱中的Blockly有了简单的了解之后，尝试动手设计自己的函数。
<center><img src="/assets/p129.png"/></center>

&emsp;上图是一个简单的无参函数，它的函数名就叫“无参函数”，当你从工具箱拖动一个块在编辑区的同时，在工具箱中的函数选项卡中会生成一个对应的函数块，当再用到此函数时，就可以像使用其他工具箱中的块一样直接使用。
<center><img src="/assets/p130.png"/></center>

<strong>(2)有参函数的定义</strong>
&emsp;与无参函数不同，有参函数需要在“设置”中对参数进行设置，拖动“输入名称：x”至右侧“输入”中，并对参数进行命名即可。
<center><img src="/assets/p131.png"/></center>

&emsp;同时，像无参函数一样，你也可以在左侧工具箱“函数”选项卡中看到对应的块。
<center><img src="/assets/p132.png"/></center>

<strong>(3)函数的返回值</strong>
&emsp;函数的另外一个明显的特征就是返回值，既然函数可以进行数据处理，那就有必要将将处理结果告诉我们，所以很多函数都有返回值，所谓的返回值就是函数的执行结果。
<center><img src="/assets/p133.png"/></center>

&emsp;当创建的函数需要返回值时，可直接从工具箱中拖动自带返回值的函数块，可见工具箱中生成的函数块左侧带有凸起的连接。
<center><img src="/assets/p134.png"/></center>

&emsp;这种方式生成的函数，只有当函数执行完成后才会返回值，如果在函数执行过程中就已经产生了想要的结果，也可以拖动"如果..返回"结束正在执行的函数，并返回执行结果。<br>
&emsp;<strong>注意：</strong>
&emsp;"如果..返回"在使用时，只有当函数最初设计有返回值时才有返回值，否则只是简单的结束正在执行的函数。
<center><img src="/assets/p135.png"/></center>

&emsp;下面来做一个小练习，设计一个求x, y中最大者的函数，名为Max(x, y)。

<center><img src="/assets/p136.png"/></center>

&emsp;可以按照思维导图，一步一步进行Max(x, y)函数的设计。在进行程序设计时，无论你是简单的学习，还是进行复杂的开发，在动手之前，一定要对你所设计的程序有一个良好的规划，磨刀不误砍柴工，好的习惯很重要，它可以加速你编程水平的提升，提高你的编程效率。
<center><img src="/assets/p137.png"/></center>

&emsp;当你设计完成后，剩下的就是测试验证程序结果了，测试时不需要很复杂，如果可以，最简单的就是使用"打印"。

<center><img src="/assets/p138.png"/></center>

## 6.2 Blockly开发工具
&emsp;在前几章的学习中，每章开篇我们的小游戏环节，每个小游戏虽然是可视化编程，和我们学习的Blockly很像，但是又有所不同，而这些不同由何而来?这就是我们本章所讲的重点，Blockly开发工具(Blockly Developer Tools)，通过它用户可以自定义新块，这使得Blockly可扩展性大大提升，同时也是Blockly的灵活和强大之处。
<center><img src="/assets/p139.png"/></center>

&emsp;本节面向希望在Blockly中创建新块的开发人员。它的基本要求是，有一个
<center><img src="/assets/p140.png"/></center>

&emsp;可以编辑的Blockly的本地副本，大体上熟悉了Blockly的使用，并且对JavaScript有一个基本的理解。
<center><img src="/assets/p141.png"/></center>

&emsp;Blockly带有大量的预定义块，从数学函数到循环结构的一切，然而为了与外部应用程序接口，必须创建自定义块以形成API。 例如，当创建绘图程序时，可能需要创建“绘制半径R的圆”块。而在大多数情况下，最简单的方法是找到一个已经存在的真正相似的块，复制它，并根据需要修改它。 <br>
&emsp;第一步是创建一个块; 指定其形状，字段和连接点。 使用Blockly Developer Tools是编写此代码的最简单的方法，或者，可以在学习API之后手动编写该代码，高级块可以响应于用户或其他因素而动态地改变它们的形状。<br>
&emsp;第二步是创建生成器代码以将新块导出为编程语言（例如JavaScript，Python，PHP，Lua或Dart）。为了生成既干净又正确的代码，必须注意给定语言的操作列表顺序，创建更复杂的块需要使用临时变量和调用函数，当输入使用两次并需要缓存时，这是尤为重要的。<br>
&emsp;Blockly开发工具是一个基于Web的开发工具，可自动完成Blockly配置过程的各个部分，包括创建自定义块，构建工具箱和配置Web Blockly工作区。<br>
&emsp;使用该工具的Blockly开发者进程包括三个部分：<br>
&emsp;1、使用块工厂和块导出器创建自定义块。<br>
&emsp;2、使用Workspace Factory构建工具箱和默认工作空间。<br>
&emsp;3、使用Workspace Factory配置工作空间（当前是仅限Web的功能）。

### 6.2.1 定义一个块
<center><img src="/assets/p142.png"/></center>

&emsp;定义一个块需要使用到Blockly开发工具中的块工厂(Block Factory),块工厂主要分为三个区域：<br>
&emsp;（1）编辑区：对新增块进行设计和编辑<br>
&emsp;（2）预览区：对编辑区编辑的块进行实时预览<br>
&emsp;（3）代码区：代码区分为两个部分Language code和Generator stub，其中Language code 区指定和控制新增块所呈现的形状，Generator stub区负责新增块所要生成的代码。<br>
&emsp;在编辑区的左侧，可以看到4个基本块，Input，Field，Type和Colour，它们是四个原料库，使用者可以从这些库中获取所需要的任意“原料”，来合成自己的新块。
<center><img src="/assets/p143.png"/></center>

&emsp;先从最简单的介绍，颜色(Colour)块，它默认定义了九种基本颜色，直接将你想要的颜色拖到右侧，拼接到对应的colour的凹槽，便可立即在预览区看到新块的颜色。
<center><img src="/assets/p144.png"/></center>
<center><img src="/assets/p145.png"/></center>

&emsp;如果默认色彩中没有你想要的颜色，可以拖动任意色彩块到编辑区拼接完成后，点击色块中的数字，在色块的下方出现一个圆形的调色盘，转动调色盘，选择你喜欢的颜色。
<center><img src="/assets/p146.png"/></center>

&emsp;在Blockly中，同一类型的块通常采用相同的颜色，所以新块的颜色选择不能仅凭喜欢，还需要前后兼顾。<br>
&emsp;一个新块不仅需要有颜色，还需要与其他块进行衔接，这就需要设计新增块的输入和输出，它们将决定新增块的功能、属性和类别。<>br
&emsp;接下来看一看输入(Input)，这是新增块与其他块连接的接口之一。
<center><img src="/assets/p147.png"/></center>

&emsp;输入可以分为三种类型：值输入(value input)，声明输入(statement input)，模拟输入(dummy input)。首先以值输入为例，拖动值输入至右侧与Inputs连接，可看到预览区新增块多了一个凹槽:
<center><img src="/assets/p148.png"/></center>

&emsp;根据需要，使用者还可以添加多个输入值，但要注意多个输入值的名字不能相同，否则会出现警告，而且在后续调用的时候，也会冲突报错，新块名字也是如此，不能与其他块同名，就好比如果班里有两个学生名字一样，那老师点名提问的时候就有可能出现两个同学同时起立的尴尬。
<center><img src="/assets/p149.png"/></center>

&emsp;在值输入中还可以添加域(field)，比如加入最简单的文本域，即可在输入中提示对应的文本，域中的下拉选择框可设置文本的对齐方式。
<center><img src="/assets/p150.png"/></center>

&emsp;这些设置完毕，选择新块的输入方式，扩展式和嵌入式：
<center><img src="/assets/p150.png"/></center>

