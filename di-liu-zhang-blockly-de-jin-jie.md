重新改了一下
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
<center><img src="/assets/p151.png"/></center>

&emsp;有了输入之后，别的块就可以很容易的通过凹槽加入到新块了，但是，这时另外一个值得考虑的问题又出现了，怎样将新增块加入到其他的块之中呢？我们有五种选择：
<center><img src="/assets/p152.png"/></center>

&emsp;看完值输入之后，再一起来看一下另一个常用的输入类型，声明输入(statement input)，它通常用作条件控制和循环控制。
<center><img src="/assets/p153.png"/></center>

&emsp;使用值输入和声明输入，可以很容易的设计出编程中常用的条件语句和循环语句：
<center><img src="/assets/p154.png"/></center>

&emsp;任务一：自己动手定义一个新块，并描述它的功能。
### 6.2.2 管理库
&emsp;块由其名称引用，因此要创建的每个块都必须具有唯一的名称。 用户界面强制执行此操作，并在您“保存”新块或“更新”现有块时清除。
<center><img src="/assets/p155.png"/></center>
<center><img src="/assets/p156.png"/></center>

&emsp;您可以在先前保存的块之间切换，或通过单击库按钮创建新的空块。更改现有块的名称是快速创建具有类似定义的多个块的另一种方法。
<center><img src="/assets/p157.png"/></center>

### 6.2.3 导入和导出库
&emsp;块被保存到浏览器的本地存储，清除浏览器的本地存储将删除您的块。 要无限期保存块，您必须下载库。 您的块库将下载为可导入的XML文件，以将您的块库设置为下载文件时的状态。请注意，导入块库将替换当前的库，因此您可能需要先备份导出。<br>
&emsp;导入和导出功能也是维护和共享不同组自定义块的推荐方式。
<center><img src="/assets/p158.png"/></center>

### 6.2.4 块导出器
&emsp;如果你设计了块，并且想要在应用程序中使用它们的时候，可以在块导出器重完成块定义和生成器的导出。<br>
&emsp;存储在块库中的每个块都将显示在块选择器中。 单击块以选择或取消选择要导出的块。 如果要选择库中的所有块，请使用“选择”→“所有存储在块库”选项。 如果使用“工作区出厂”选项卡构建了工具箱或配置了工作区，则还可以通过单击“选择”→“在工作区工厂中使用”选择所有使用的块。
<center><img src="/assets/p159.png"/></center>

&emsp;导出设置允许您选择要定位的生成语言，以及是否需要所选块的定义。 选择这些文件后，点击“导出”即可下载文件。
<center><img src="/assets/p160.png"/></center>

### 6.2.5 工作区工厂
&emsp;工作区工厂可以方便地配置工具箱和工作区中的默认块组。 您可以使用“工具箱”和“工作区”按钮在编辑工具箱和起始工作区之间切换。
<center><img src="/assets/p161.png"/></center>

<strong>(1)构建工具箱</strong>
&emsp;此选项卡有助于构建工具箱的XML，该材料假定使用者熟悉工具箱的功能，如果您在此处要编辑工具箱的XML时，可以通过单击“加载到编辑”加载它。
<strong>(2)没有类别的工具箱</strong>
&emsp;如果您有几个块，它们没有任何类别，想要显示它们的时候，只需将它们拖动到工作区中，您将看到您的块出现在工具箱的预览中。
<center><img src="/assets/p162.png"/></center>

<strong>(3)有类别工具箱</strong>
&emsp;如果你想要显示块类别，点击“+”按钮，并选择下拉项目为新类别。 这将向您的类别列表中添加一个类别，您可以选择和编辑。 选择“标准类别”以添加单个标准块类别（逻辑，循环等）或“标准工具箱”以添加所有标准块类别。 使用箭头按钮重新排序类别。
<center><img src="/assets/p163.png"/></center>

&emsp;要更改所选类别名称或颜色，请使用“编辑类别”下拉菜单。 将块拖动到工作区中将将其添加到所选类别。
<center><img src="/assets/p164.png"/></center>

<strong>(4)选择工作区选项</strong>
&emsp;为配置选项设置不同的值，并在预览区域中查看结果。 启用网格或缩放会显示更多配置选项。 此外，切换到使用类别通常需要更复杂的工作空间; 当您添加第一个类别时，会自动添加垃圾桶和滚动条。
<center><img src="/assets/p165.png"/></center>

<strong>(5)将预加载块添加到工作区</strong>
&emsp;这是可选的，但如果要在工作空间中显示一组块，则可能需要:
&emsp;a当应用程序加载时显示<br>
&emsp;b当触发事件（提高级别，单击帮助按钮等）时显示<br>
&emsp;将块拖动到编辑空间中，可以在预览区中查看它们。 您可以创建块组，禁用块，并在选择某些块时创建阴影块。
<center><img src="/assets/p166.png"/></center>

<strong>(6)导出</strong>
&emsp;工作区工厂提供以下导出选项：
<center><img src="/assets/p167.png"/></center>

&emsp;◎Starter Code：生成html和javascript以注入您的自定义Blockly工作区。<br>
&emsp;◎工具箱生成XML以指定您的工具箱。<br>
&emsp;◎工作区块生成可以加载到工作区中的XML。<br>
<strong>(7)更多创建自定义块的信息，可参考Google Blockly:</strong><br>
https://developers.google.com/blockly/guides/create-custom-blocks/overview
## 6.3 Blockly的高级使用
&emsp;在之前的学习中，我们通过使用Blockly，学习一些基础程序设计中的经典的例子，并通过Blockly的可视化代码编辑器，进行了编程的实践练习,我们所接触和使用的这些，并不是Blockly设计的初衷。Blockly是一个库，它为Web和Android应用程序添加了一个可视化代码编辑器，Blockly编辑器使用互锁的图形块来表示代码概念，如变量，逻辑表达式，循环等，它允许用户应用编程原则，而不必担心语法或命令行上闪烁的光标。
### 6.3.1将Blockly作为代码生成器
&emsp;每个人不可能精通甚至熟悉每一种语言，但有时候，在学习、工作中又可能会用到所未接触过的语言，如果我们没有额外的时间且精力，尤其当这种语言再极少使用时，我们可能不乐意去花时间和精力去学习，但又不得不用，于是经常陷入两难。针对这一常见现象，我们就可以使用Blockly作为代码生成工具。<br>
(1)假如现在我们需要一个判断平年闰年的Python代码的小例子，但我们之前又没接触过Python，我们又不想学习Python，那么就可以打开Blockly，在编辑区拖动块来编写:
<center><img src="/assets/p168.png"/></center>

拖动完成，验证无误，点击Python选项卡，复制代码至你的Python环境中，即可直接运行。
<center><img src="/assets/p169.png"/></center>

Python环境中的运行结果：
<center><img src="/assets/p170.png"/></center>

(2)假如现在需要一个JavaScript的执行脚本，而且我们对JavaScript也有所了解，我们也可以尝试在Blockly中进行编程开发，比如这个猜数字的小游戏：
<center><img src="/assets/p171.png"/></center>

上面是程序的主体部分，包括循环、提示和中断。
<center><img src="/assets/p172.png"/></center>

在程序之前，创建了三个变量并进行了初始化:<br>
&emsp;步长:用于计数，针对猜的次数进行不同的提示。<br>
&emsp;Target：存放随机生成的目标数，与所猜数Number进行比较。<br>
Flag：开关变量，用于标记是否猜对，从而决定是否提示下方内容。
<center><img src="/assets/p173.png"/></center>

同样，验证无误后，点击JavaScript选项卡，复制js代码并保存。
<center><img src="/assets/p174.png"/></center>
<center><img src="/assets/p175.png"/></center>
<center><img src="/assets/p176.png"/></center>

将保存后的js代码导入到html文件中测试。
<center><img src="/assets/p177.png"/></center>

当然，也可以把猜数字小游戏的Python代码导出，同样可执行。
<center><img src="/assets/p178.png"/></center>

<strong>注意:</strong><br>
◎ Python代码的导出执行，当程序涉及输入且输入的是数字时，需要使用int()，将输入的字符串型“数字”强制类型转换成整型。
<center><img src="/assets/p179.png"/></center>
<center><img src="/assets/p180.png"/></center>

如果不进行强制类型转换，执行脚本时可能会报错，即使不报错，结果也可能不正确。但这一问题在JavaScript导出代码中不存在，兼容性良好。
<center><img src="/assets/p181.png"/></center>

◎对于JavaScript代码的测试，可以导入到html中，在浏览器中执行，测试效果与Blockly中效果相同。html代码如下：
<center><img src="/assets/p182.png"/></center>

本条注意事项专门针对没有JavaScript基础，但是对Blockly代码生成工具又感兴趣，想亲手测试验证的读者。
&emsp;关于Blockly作为代码生成工具的使用，我们这里只举了两个基础的，有代表性的例子，当然如果你学有余力或者对所生成的目标代码十分熟悉，可以自行尝试更加有趣、更加复杂的例子，如果你觉得这并不能满足你的需求，那么可以尝试自己动手定义你想要的块，生成代码的格式、类型和种类。
### 6.3.2 Blockly的二次开发
&emsp;随着Blockly逐渐的完善，它被越来越多的人所熟知，同时，凭借它可视化编程，良好的可扩展性等特点，很多的开发者利用Blockly进行二次开发,因此衍生出许多优秀的产品和工具。
<center><img src="/assets/p183.png"/></center>
<center><img src="/assets/p184.png"/></center>

&emsp;前面曾提到过，Blockly的初衷是针对开发人员设计的，它是一个针对有经验的开发人员的复杂库。从用户的角度来看，Blockly是一种直观，可视化的构建代码的方法。从开发人员的角度来看，Blockly本质上是一个包含正确语法、生成代码的文本框， Blockly可以导出多种语言，例如JavaScript，Python，PHP，Lua，Dart等，下面是对Blockly进行二次开发的步骤：<br>
a.集成块编辑器。 Blockly编辑器包括用于存储块类型的工具箱和用于排列块的工作空间。<br>
b.创建应用程序的块。 一旦你的应用程序中有Blockly，你就需要创建块供用户编码，然后将它们添加到您的Blockly工具箱。<br>
c.构建应用程序的其余部分。 本身，Blockly只是一种生成代码的方法, 你的应用程序的核心在于如何处理该代码。<br>
&emsp;可能单纯的文字描述比较抽象，难以理解，以FreDuino为例，它是基于Blockly二次开发而成的一个远程硬件控制平台。
<center><img src="/assets/p185.png"/></center>

a.集成块编辑器，在工具箱里增添了与硬件外设进行交互的编码块。
<center><img src="/assets/p186.png"/></center>

b.创建应用程序块，实现了Blockly块与硬件控制代码之间的转换。
<center><img src="/assets/p187.png"/></center>

c.在构建应用程序部分，通过与硬件外设建立通信，实现代码的上传，进而完成与硬件的交互。
<center><img src="/assets/p188.png"/></center>

&emsp;FreDuino就是通过上述三个步骤而诞生的，实现了对硬件外设的远程可视化控制。
<center><img src="/assets/p189.png"/></center>

## 课后习题
&emsp;1. 写一个判断素数的函数，在主函数输入一个整数，输出是否是素数。<br>
&emsp;2. 设计定义一个自己的工具块。<br>
&emsp;3. 编写函数，给出年、月、日，计算该日是该年的第n天，并尝试将其导出的代码在其他语言环境中调试运行。
## 知识梳理
<center><img src="/assets/p190.png"/></center>

