
# 第一章 Google Blockly教学应用手册
## 1.1 Google Blockly概述
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;美国计算科学教育一直认为计算机作为当今各个领域的基础技术工具，有必要让学生尽早的了解和学习计算机工作原理，理解基础的编程思维。在2006年周以真教授提出计算思维概念，这很大程度上促进了人们对计算机编程教学的认识。图形化编程摒弃了繁琐的代码语法，以直观的图形化模块进行编程，其思想最早来源于西摩尔·帕伯特的心理学家在从事儿童学习的研究中发明的LOGO语言。近年来随着计算机技术的快速发展，出现了很多优秀的图像化编程工具提供给学生学习计算机程序设计，比如：Alice、Scratch、AppInventor等著名软件。在2012年6月，Google发布了完全可视化的编程语言Google Blockly，这是一款完全开源的，集合多种编程语言的编程工具。很多图形化编程平台都是基于Google Blockly二次开发的，譬如：APPInventor、Wyliodrin、Earsketch等优秀编程平台。Google Blockly作为一种易于掌握的图像化开源编程环境，是编程初学者学习和掌握程序设计方法的有力工具，非常有必要予以了解和掌握。
## 1.2 什么是Google Blockly
#### 1、一种基于网页的可视化程序
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Google Blockly是基于网页的可视化编程工具库。用户可以以离线或者在线的方式在Windows、Linux、MC和Android平台上的浏览器端进行编程操作。可以使用计算机端、手机或平板移动端进行随时随地的完成编程设计，教学编程方式多种多样。
#### 2、多种开发语言环境库
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Blockly基于图形化编程设计可以导出Javascript、Python、PHP、Lua、Dart等多种语言。通过图形化编程完成程序设计，在Blockly中有一个类似语言转换器的工具箱，可以将图形化编程语言转化成多种编程语言代码。用图形化编程方式去理解多种程序语言。
#### 3、开源的自定义编程环境
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Blockly是开源的编程工具，用户可以根据自己编程的特点要求，对Blockly工具箱进行自定义设计。同时，Blockly开发工具能让用户自定义块导出至工具箱，并在工作区工厂完成对代码的封装。如图所示。
<center><img src="/assets/p2.png"/></center>
## 1.3 Google Blockly的编程环境
Blockly是一个可用于Web、Android、iOS的可视化代码编辑器库<br>
#### 1. Blockly在线使用
打开浏览器，在地址栏输入[https://developers.google.com/blockly/](https://developers.google.com/blockly/)，前往Blockly官网，即可体验编程。如图所示
<center><img src="/assets/p3.png"/></center>
#### 2、Blockly的离线环境搭建
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在Github网站或者Blockly主页上找到对应系统的文件包，下载后，无需安装，解压，进入demos目录，打开index.html，选择相应的选项，即可体验。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Linux系统，可下载TAR Ball，在终端进行文件解压即可；<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Windows系统，可下载ZIP File，并继续解压即可;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Github Blockly地址: https://github.com/google/blockly<br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TAR Ball地址: https://github.com/google/blockly/tarball/master<br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ZIP File地址: https://github.com/google/blockly/zipball/master<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Blockly离线使用都是免安装的，只需Clone或解压后，进入demos目录，打开index.html，选择相应的选项，即可体验。
## 1.4 Google Blockly在中学信息技术课程教育应用优势 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;GBlockly 是一个基于 Web 的可视化编程工具，以图形化语言编程，这个新语言的主要目的是为web应用提供宏(或脚本编程)的支持。可以把生成的脚本输出成Javascript, python 等，还可以自定义图形化编程工具。目前可以在中小学利用blockly开始信息技术课程的编程学习，同时结合Arduino开发板，进行创客教育的探索与实践。
#### 1、基于WEB跨平台的图形化编程软件
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G在中小学信息技术课程中，编程算法的教学工具的选择一直是教师专家探究的主要问题。代码程序的封装使得图形化编程工具的优势越来越明显，在计算机编程方面出现许多优秀的图形化编程工具。Blockly是基于WEB平台的图形化编程工具，可以在任何系统平台进行在线与离线版操作使用编程，也可以在教室主机现场搭建服务器平台，WEB界面实时编程，测试编程结果。
#### 2、定制自己的编程工具—项目式教学探索
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G目前的Scratch、PencilCode以及APPInventor等流行的图形化编程软件中，由于图形程序模块的局限性，一些特殊功能很难在平台实现。Blockly提供的代码自定义工厂功能，使得用户可以利用集成块编辑器，创建符合自己创作要求的应用程序块。Blockly只是一种生成代码的方法, 你的应用程序的核心在于如何处理该代码。这样一种自定义图形化块的方式可以方便师生在教学任务过程中自定义符合教学功能的模块，实现教学工具的再次开发。
#### 3、结合开源Arduino进行创新体验编程教学
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G中小学阶段使用Arduino开源硬件版进行创客课程教学非常普及，使用Blockly平台结合Arduino开源硬件，是构建高中信息技术课堂的STEAM教学项目新探索。学生可以基于图形化编程跨平台创造作品，通过程序功能设计的硬件外化过程，建构跨学科知识课堂。
## 课后练习
1. 进入Blockly官网，熟悉Blockly，并使用在线Blockly输入“Hello Blockly”。<br>
2. 在本地配置离线版Blockly，并完成“Plane”游戏的练习。