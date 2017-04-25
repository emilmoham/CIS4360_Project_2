all:
	echo "Specify a file to compile\n Shellcode || exploit || stack"

shellcode: call_shellcode.c
	gcc -z execstack -o call_shellcode call_shellcode.c

exploit: exploit.c
	gcc -o exploit exploit.c -W
