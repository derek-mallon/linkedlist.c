all: linkedlist.c linkedlist.h
	clang -Ofast -Wall -c linkedlist.c
	clang -Ofast -Wall -shared -o liblinkedlist.so linkedlist.o
install: 
	mv liblinkedlist.so /usr/lib
	cp linkedlist.h /usr/include
	rm linkedlist.o
