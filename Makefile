# target : souce

compiler:= gcc
flags:=
target:= outProg
sources:= $(wildcard *.c)
objects:= $(patsubst %.c, %.o, $(sources))

out: $(objects)
	$(compiler) $(objects) -o $(target) && ./$(target)

%.o : %.c 
	$(compiler) -c $< -o $@

clear:
	rm *.o $(target)
	
	
#Usage: 
#to compile input make

#to clear object files input make clear

# ===============================================
# out: exit.o hello.o
# 	gcc exit.o hello.o -o outProg && ./outProg

# exit.o: exit.c
# 	gcc -c exit.c -o exit.o

# hello.o: hello.c
# 	gcc -c hello.c -o hello.o

# clear:
# 	rm *.o outProg

