PROGNAME1 = "insertion-sort"
PROGNAME2 = "nonincreasing-insertion-sort"
PROGNAME3 = "merge-sort"
PROGNAME4 = "no-sentinel-merge-sort"
PROGNAME5 = "recursive-insertion-sort"
SRCDIR1 = "insertion-sort/"
SRCDIR2 = "merge-sort/"
CDIR = "C/"
OBJ = "obj/"
BINDIR = "bin/"

all: insertion-sort \
    nonincreasing-insertion-sort \
    merge-sort \
    no-sentinel-merge-sort \
    recursive-insertion-sort

insertion-sort: insertion-sort.o
	gcc $(OBJ)$(PROGNAME1).o -o $(BINDIR)$(PROGNAME1)

insertion-sort.o:
	gcc -c $(SRCDIR1)$(CDIR)$(PROGNAME1).c -o $(OBJ)$(PROGNAME1).o

nonincreasing-insertion-sort: nonincreasing-insertion-sort.o
	gcc $(OBJ)$(PROGNAME2).o -o $(BINDIR)$(PROGNAME2)

nonincreasing-insertion-sort.o:
	gcc -c $(SRCDIR1)$(CDIR)$(PROGNAME2).c -o $(OBJ)$(PROGNAME2).o

merge-sort: merge-sort.o
	gcc $(OBJ)$(PROGNAME3).o -o $(BINDIR)$(PROGNAME3)

merge-sort.o:
	gcc -c $(SRCDIR2)$(CDIR)$(PROGNAME3).c -o $(OBJ)$(PROGNAME3).o

no-sentinel-merge-sort: no-sentinel-merge-sort.o
	gcc $(OBJ)$(PROGNAME4).o -o $(BINDIR)$(PROGNAME4)

no-sentinel-merge-sort.o:
	gcc -c $(SRCDIR2)$(CDIR)$(PROGNAME4).c -o $(OBJ)$(PROGNAME4).o

recursive-insertion-sort: recursive-insertion-sort.o
	gcc $(OBJ)$(PROGNAME5).o -o $(BINDIR)$(PROGNAME5)

recursive-insertion-sort.o:
	gcc -c $(SRCDIR1)$(CDIR)$(PROGNAME5).c -o $(OBJ)$(PROGNAME5).o

clean:
	rm -rf $(OBJ)*
	rm -rf $(BINDIR)$(PROGNAME1)
	rm -rf $(BINDIR)$(PROGNAME2)
	rm -rf $(BINDIR)$(PROGNAME3)
	rm -rf $(BINDIR)$(PROGNAME4)
	rm -rf $(BINDIR)$(PROGNAME5)
