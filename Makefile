all:
	dub build
	dub run
	./removes.sh
