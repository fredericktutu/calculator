mycalc: y.tab.c lex.yy.c
	gcc  -o mycalc y.tab.c lex.yy.c
y.tab.c: mycalc.y
	byacc -dv mycalc.y

lex.yy.c: mycalc.l
	flex mycalc.l
