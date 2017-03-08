.PHONY: server test clean

all: cpanfile.snapshot test.db

cpanfile.snapshot: cpanfile
	carton install

test.db: schema.sql
	rm -f test.db
	cat schema.sql | sqlite3 test.db

server: cpanfile.snapshot
	carton exec -- plackup -Ilib app.psgi --port 5000

test: cpanfile.snapshot
	carton exec -- prove -Ilib -r t

clean:
	rm -rf test.db local cpanfile.snapshot
