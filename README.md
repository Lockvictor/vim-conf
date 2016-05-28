# vim-conf
我在Linux下vim和gvim的配置文件

# 使用说明
把vimrc文件拷贝到根目录下改名为.vimrc（如果使用gvim就把gvimrc复制到根目录改名为.gvimrc），然后把vim-conf文件夹拷贝到根目录下改名为.vim。

# 配置说明
##Colors
* molokai.vim  
挺不错的配色方案，终端下也有很好的显示效果。

## Plugins 

* pyflakes  
Python语法检查，需要在vimrc中加入`filetype plugin indent on`以确保插件被加载，如果不写Python可以删除该文件夹。  

* NERD Commenter  
快速注释，注释快捷键为英文逗号“,”，当然可以在.vimrc里改`let mapleader = ","`这一句来设置自己喜欢的快捷键。

* auto-pairs  
自动补全""、[]和()等符号，不包括html标签的补全。

## Syntax
* python.vim  
为Python提供更好的配色支持。


#备注
由于主要工作在终端，所以只能确保.vimrc配置的没问题，.gvimrc没有经过详细测试。
