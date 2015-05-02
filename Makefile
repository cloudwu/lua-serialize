all : serialize

linux : serialize.so

serialize.so : serialize.c
	gcc -Wall -g -o $@ -fPIC --shared $^

serialize : serialize.c
	gcc -Wall -g -o $@.dll --shared $^ -I/usr/local/include -L/usr/local/bin -llua53