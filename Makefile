all: linkedlist.c linkedlist.h
	clang -Ofast -Wall -c linkedlist.c
	clang -Ofast -Wall -dynamiclib -o liblinkedlist.dylib linkedlist.o
install: 
	mv liblinkedlist.dylib /usr/lib
	cp linkedlist.h /usr/local/include
	rm linkedlist.o
remove:
	rm /usr/local/include/linkedlist.h
	rm /usr/lib/liblinkedlist.dylib
