all : serialize

serialize : serialize.c
	gcc -Wall -g -o $@.dll --shared $^ -I/usr/local/include -L/usr/local/bin -llua52