
# run me with gmake, yes, GNU Make...

#SHA:=$(shell git log -1 --format="%H")
SHA:=$(shell git log -1 --format="%h")

pkg/cadence_$(SHA).scad: pkg
	echo "\n// cadence $(SHA).scad" > pkg/cadence_$(SHA).scad
	echo "// https://github.com/jmettraux/cadence.scad\n" >> pkg/cadence_$(SHA).scad
	cat src/cadence.scad >> pkg/cadence_$(SHA).scad
	cp pkg/cadence_$(SHA).scad pkg/cadence.scad
pkg:
	mkdir -p pkg/
sha:
	echo $(SHA)

clean:
	rm -fR pkg/

.PHONY: clean

