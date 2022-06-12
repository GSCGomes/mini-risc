* Description:
Inifinite counter from 0 to 15, saving values in memory. Writen from this C program:

void main()
{
    int c, m;
  init:
	c = 0;
  store:
	m = c;
  increment:
    if (c == 15) goto init;
    ++c;
    goto store;
}

* Assembly:
           addi x2, x0, 2  # memory address
	       addi x3, x0, 15 # max count
init:	   addi x1, x0, 0
store:	   sw x1, 0(x2)
increment: beq x1, x3, init
           addi x0, x0, 0 # gambiarra
		   addi x1, x1, 1
		   j x0, store
           addi x0, x0, 0 # gambiarra

* Binary in the format used inside instruction memory initialization (memi.vhd):
0      => B"00001000000000000000001000000001",
1      => B"00001100000000000000111100000001",
2      => B"00000100000000000000000000000001",
3      => B"00000000001000000100000010000100",
4      => B"11111100000100001111010010010101",
5      => B"00000000000000000000000000000001",
6      => B"00000100000100000000000100000001",
7      => B"00000000000000000000110010010110",
8      => B"00000000000000000000000000000001",
