find . -name "*.h" -o -name "*.c" -o -name "*.s" > cscope.files
cscope -bkq cscope.files
ctags -I __THROW -I __attribute_pure__ -I __nonnull -I __attribute__ --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q -R
