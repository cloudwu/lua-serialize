all : serialize

serialize : serialize.c
	gcc -Wall -O2 -o $@.dll --shared $^ -I/usr/local/include -L/usr/local/bin -llua52