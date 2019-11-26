# calculator
---
## this is a calculator, which can execute add/sub/mul/div, and also deal with parentheses.
## I wrote this by flex and yacc, and run it on WSL(ubuntu)
---
### how to use
the file includes 3 part:
+ mycalc.l: flex file
+ mycalc.y: yacc file
+ Makefile

linux command:
```shell
make
```
then just
```
./mycalc
```
to run the program



