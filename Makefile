# Count words.
# take the file isles.dat. if books/isles.txt is newer than isles.dat, rerun the python command
# make is a full programming lanaguage

# all
all: isles.dat abyss.dat

# rerun entire workflow - clean up all derived files, and rebuild
clean:
	-rm -f *.dat


isles.dat : books/isles.txt
	python wordcount.py books/isles.txt isles.dat

# fix the code below

abyss.dat : books/abyss.txt workcount.py
	python wordcount.py books/abyss.txt abyss.dat