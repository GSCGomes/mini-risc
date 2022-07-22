* Description:
Simple program testing basic instructions and three types of interruptions (two timers and one GPIO)

* Assembly:
```
# Main program

addi, x10, x0, 1
addi, x11, x0, 3
add,  x12, x10, x11
sw,   x12, 4(x0)
lw    x13, 4(x0)

# GPIO subroutine
addi x1, x0, 1
ecal 0

# Timer 0 subroutine
addi, x4, x0, 2
ecal 0

#Timer 1 subroutine
addi, x3, x0, 3
ecal 0
```

* Binary in the format used inside instruction memory initialization (memi.vhd):
```
-- main program
0      => B"00101000000000000000000100000001",
1      => B"00101100000000000000001100000001",
2      => B"00110000101000101100000000000000",
3      => B"00000000000000110000010010000100",
4      => B"00110100000000000000010010000010",

-- GPIO subroutine
5 => B"00000100000000000000000100000001"
6 => B"00000000000000000000000011110111"

-- Timer 0 subroutine
10 => B"00000100000000000000001000000001"
11 => B"00000000000000000000000011110111"

-- Timer 1 subroutine
12 => B"00000100000000000000001100000001"
13 => B"00000000000000000000000011110111"
```
