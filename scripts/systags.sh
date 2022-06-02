#!/bin/bash

#
# File: ctags.sh
# Author: zhankunlin
# Date: 2011-11-30
# Desc: ctags 生成系统库相关函数的tags, 存放于 ~/.vim/systags 文件中
#

mkdir -p ~/.vim;

ctags -I __THROW -I __attribute_pure__ -I __nonnull -I __attribute__ --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q  -f ~/.vim/systags /usr/include/* /usr/include/x86_64-linux-gnu/sys/* /usr/include/x86_64-linux-gnu/bits/* /usr/include/netinet/* /usr/include/linux/* /usr/src/linux-headers-5.8.0-59-generic/include/linux/* /usr/src/linux-source-5.4.0/linux-source-5.4.0/include/linux/*

mv ~/.vim/systags /etc/vim/
#========================="
#set tags+=~/.vim/systags
#========================="' >> ~/.vimrc
