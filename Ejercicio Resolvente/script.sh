nasm -f elf32 resolvente.s -o resolvente.o

gcc -m32 -o resolvente resolvente.o pedirnumeros.c

./resolvente
