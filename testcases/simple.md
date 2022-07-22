* Description:
Simple program testing basic instructions (add, addi, sw, lw)

* Assembly:
```
addi, x10, x0, 1 
addi, x11, x0, 3  
add,  x12, x10, x11 
sw,   x12, 4(x0) 
lw    x13, 4(x0) 
```

* Binary in the format used inside instruction memory initialization (memi.vhd):
```
0      => B"00101000000000000000000100000001",  
1      => B"00101100000000000000001100000001",  
2      => B"00110000101000101100000000000000",  
3      => B"00000000000000110000010010000100",  
4      => B"00110100000000000000010010000010",  
```
