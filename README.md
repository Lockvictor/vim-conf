# vim-conf
我在Linux下的vim配置

# 使用说明
安装
```shell
cd ~
git clone https://github.com/Lockvictor/vim-conf.git
ln -s ~/vim-conf ~/.vim
ln -s ~/vim-conf/vimrc ~/.vimrc
```
另外，虽然vi早已被vim取代，但在终端工作时通常习惯于用vi代替vim命令，所以请在.bashrc文件中添加如下两句：
```shell
alias vi="vim"
alias sudo="sudo " #注意有个空格，不添加此句sudo vi依然会调用vi而不是vim
```

# 配置说明
##Colors
* molokai.vim  
vim和gvim下都有很好的显示效果，终端下原来的深黑色背景太刺眼，于是我把背景调浅了一些，看起来更柔和

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


#更新
2016-09-24 删除gvimrc，非终端环境下就不要再折腾vim了，好好使用其他编辑器吧，比如vs code
