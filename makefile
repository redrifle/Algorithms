PROGNAME1 = "insertion-sort"
PROGNAME2 = "nonincreasing-insertion-sort"
PROGNAME3 = "merge-sort"
PROGNAME4 = "recursive-insertion-sort"
SRCDIR1 = "insertion-sort/"
SRCDIR2 = "merge-sort/"
OBJ = "obj/"

all: insertion-sort \
    nonincreasing-insertion-sort \
    merge-sort \
    recursive-insertion-sort

insertion-sort: insertion-sort.o
	gcc $(OBJ)$(PROGNAME1).o -o $(SRCDIR1)$(PROGNAME1)

insertion-sort.o:
	gcc -c $(SRCDIR1)$(PROGNAME1).c -o $(OBJ)$(PROGNAME1).o

nonincreasing-insertion-sort: nonincreasing-insertion-sort.o
	gcc $(OBJ)$(PROGNAME2).o -o $(SRCDIR1)$(PROGNAME2)

nonincreasing-insertion-sort.o:
	gcc -c $(SRCDIR1)$(PROGNAME2).c -o $(OBJ)$(PROGNAME2).o

merge-sort: merge-sort.o
	gcc $(OBJ)$(PROGNAME3).o -o $(SRCDIR2)$(PROGNAME3)

merge-sort.o:
	gcc -c $(SRCDIR2)$(PROGNAME3).c -o $(OBJ)$(PROGNAME3).o

recursive-insertion-sort: recursive-insertion-sort.o
	gcc $(OBJ)$(PROGNAME4).o -o $(SRCDIR1)$(PROGNAME4)

recursive-insertion-sort.o:
	gcc -c $(SRCDIR1)$(PROGNAME4).c -o $(OBJ)$(PROGNAME4).o

clean:
	rm -rf $(OBJ)*
	rm -rf $(SRCDIR1)$(PROGNAME1)
	rm -rf $(SRCDIR2)$(PROGNAME2)
	rm -rf $(SRCDIR1)$(PROGNAME3)
	rm -rf $(SRCDIR1)$(PROGNAME4)
