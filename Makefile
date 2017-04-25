all:
	echo "Specify a file to compile\n Shellcode || exploit || stack"

shellcode: call_shellcode.c
	gcc -z execstack -o call_shellcode call_shellcode.c

exploit: exploit.c
	gcc -o exploit exploit.c -W

stack_1: stack.c
	echo "Note: This file should be compiled as root\nRemember to use chmod 4577 on the created file\n"
	gcc -o stack -z execstack -fno-stack-protector stack.c

stack_3: stack.c
	echo "Note: This file should be compiled as root\nRemember to use chmod 4577 on the created file\n"
	gcc -o stack_task3 -z execstack stack.c

stack_4: stack.c
	echo "Note: this file should be compiled as root\nRemeber to use chmod 4577 on the created file\n"
	gcc -o stack_task4 -fno-stack-protector -z noexecstack stack.c
