run: PROB1 PROB1.c
	./bin/PROB1
PROB1.c: PROB1.cob
	cobc -CF PROB1.cob
PROB1: PROB1.cob
	cobc -xF PROB1.cob -o bin/PROB1
