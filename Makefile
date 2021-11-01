CC      = g++
SOURCEDIR = ./sstmap
INSTALLDIR = ~/anaconda2/bin
bruteclust: $(SOURCEDIR)/make_clust_brute.cpp
	$(CC) -o bruteclust $(SOURCEDIR)/make_clust_brute.cpp; mv bruteclust $(INSTALLDIR)


kdhsa102: $(SOURCEDIR)/kdhsa102_main.cpp $(SOURCEDIR)/kdhsa102.h
	$(CC) -o kdhsa102 $(SOURCEDIR)/kdhsa102.cpp $(SOURCEDIR)/kdhsa102_main.cpp; mv kdhsa102 $(INSTALLDIR)


all: bruteclust kdhsa102 

clean:
	rm -f bruteclust
	rm -f kdhsa102

test: pytest -m tests