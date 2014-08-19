PROGNAME1 = "insertion-sort"
PROGNAME2 = "merge-sort"
SRCDIR1 = "insertion-sort/"
SRCDIR2 = "merge-sort/"

all: insertion-sort insertion-sort.o merge-sort merge-sort.o

insertion-sort: insertion-sort.o
	gcc obj/insertion-sort.o -o $(SRCDIR1)$(PROGNAME1)

insertion-sort.o: insertion-sort/insertion-sort.c
	gcc -c $(SRCDIR1)insertion-sort.c -o obj/insertion-sort.o

merge-sort: merge-sort.o
	gcc obj/merge-sort.o -o $(SRCDIR2)$(PROGNAME2)

merge-sort.o: merge-sort/merge-sort.c
	gcc -c merge-sort/merge-sort.c -o obj/merge-sort.o

clean:
	rm -rf obj/* $(SRCDIR1)$(PROGNAME1) $(SRCDIR2)$(PROGNAME2)
