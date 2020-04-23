
#SHA:=$(shell git log -1 --format="%H")
SHA:=$(shell git log -1 --format="%h")

pkg/cadence_$(SHA).scad: pkg
	echo "\n// cadence_$(SHA).scad" > pkg/cadence_$(SHA).scad
	echo "// https://github.com/jmettraux/cadence\n" >> pkg/cadence_$(SHA).scad
	cat src/cadence.scad >> pkg/cadence_$(SHA).scad
pkg:
	mkdir -p pkg/

clean:
	rm -fR pkg/

.PHONY: clean

