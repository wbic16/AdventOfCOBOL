run: PROB1.txt PROB1 PROB1.c
	echo "./bin/PROB1 >Result1.txt" >Result1.txt
	./bin/PROB1 >>Result1.txt
PROB1.c: PROB1.cob
	cobc -CF PROB1.cob
PROB1.txt: PROB1.data
	cat PROB1.data |sed 's/\r//g' |xargs printf "%-10d\n" >PROB1.txt
PROB1: PROB1.cob
	cobc -xF PROB1.cob -o bin/PROB1
