# Oberon-0 compiler

This repository contains the source code of Niklaus Wirth's
["Compiler Construction"](https://inf.ethz.ch/personal/wirth/CompilerConstruction/index.html)
book. The source code has been adapted so that it can be built by the
[oberonc](https://github.com/lboasso/oberonc) compiler.

## How to build

To build the compiler on Linux, you need a JVM >= 1.8 installed, with java in
the environment path.

[Download](https://github.com/lboasso/oberonc/releases) and unpack the latest
release of the *oberonc* compiler and set the `OBERON_BIN` environmental
variable to the `bin` folder of the *oberonc* distribution. For example on Linux
`export OBERON_BIN=~/oberonc-1.3/bin`.

By typing `make build` on the shell, the compiler will compile the Oberon-0
source code (including the RISC virtual machine) and write the files in the
`out` folder.

To compile and run an example program with the Oberon-0 compiler just built, use
the appropriate make target. For example `make powers` will compile
`examples/Powers.Mod` with the Oberon-0 compiler and run it on the RISC
virtual machine. The `Power.Mod` program will wait for an integer as input,
by typing `32` and enter, it will display the powers of 2 from 1 to 31.

```
$ make powers
mkdir -p out/
java -cp ~/oberonc-1.3/bin oberonc out src/RISC.Mod src/OSS.Mod src/OSG.Mod src/OSP.Mod
java -cp ~/oberonc-1.3/bin:out OSP examples/Powers.Mod
Oberon-0 Compiler OSP  30.10.2013
  compiling Powers
code generated   162     0
32
          2   1 0.5
          4   2 0.25
          8   3 0.125
         16   4 0.0625
         32   5 0.03125
         64   6 0.015625
        128   7 0.0078125
        256   8 0.00390625
        512   9 0.001953125
       1024  10 0.0009765625
       2048  11 0.00048828125
       4096  12 0.000244140625
       8192  13 0.0001220703125
      16384  14 0.00006103515625
      32768  15 0.000030517578125
      65536  16 0.0000152587890625
     131072  17 0.00000762939453125
     262144  18 0.000003814697265625
     524288  19 0.0000019073486328125
    1048576  20 0.00000095367431640625
    2097152  21 0.000000476837158203125
    4194304  22 0.0000002384185791015625
    8388608  23 0.00000011920928955078125
   16777216  24 0.000000059604644775390625
   33554432  25 0.0000000298023223876953125
   67108864  26 0.00000001490116119384765625
  134217728  27 0.000000007450580596923828125
  268435456  28 0.0000000037252902984619140625
  536870912  29 0.00000000186264514923095703125
 1073741824  30 0.000000000931322574615478515625
 2147483648  31 0.0000000004656612873077392578125
```
