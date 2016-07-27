# vim-conf
我在Linux下vim和gvim的配置文件

# 使用说明
把vimrc文件拷贝到个人目录下改名为.vimrc（如果使用gvim就把gvimrc复制到个人目录下改名为.gvimrc），然后把vim-conf文件夹拷贝到个人目录下改名为.vim。  
虽然vi早已被vim取代，但在终端工作时通常习惯于用vi代替vim命令，所以请在.bashrc文件中添加如下两句：
```shell
alias vi="vim"
alias sudo="sudo " #注意有个空格，不添加此句sudo vi依然会调用vi而不是vim
```

# 配置说明
##Colors
* molokai.vim  
挺不错的配色方案，终端下也有很好的显示效果。

## Plugins 
* NERD Commenter  
快速注释，注释快捷键为英文逗号“,”，当然可以在.vimrc里改`let mapleader = ","`这一句来设置自己喜欢的快捷键。  
> ,ca：在可选的注释方式之间切换，比如C/C++ 的块注释`/* */`和行注释//  
> ,cc：注释当前行  
> ,c空格：切换注释/非注释状态  
> ,cs：`/** */`形式的doc注释  
> ,cA：在当前行尾添加注释符，并进入Insert模式  
> ,cu：取消注释  
> Normal模式下，几乎所有命令前面都可以指定行数  
> Visual模式下执行命令，会对选中的特定区块进行注释/反注释  

* auto-pairs  
自动补全""、[]和()等符号，不包括html标签的补全。

## Syntax
* python.vim  
为Python提供更好的配色支持。


#备注
由于主要工作在终端，所以只能确保.vimrc配置的没问题，.gvimrc没有经过详细测试。
